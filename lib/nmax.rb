# frozen_string_literal: true

require 'nmax/meta'

module Nmax
  class Error < StandardError; end

  class Scanner
    def initialize(numbers)
      @max_numbers_count = numbers.to_i
      @numbers = []
    end

    def calc
      scan_numbers
      @numbers.max(@max_numbers_count)
              .join(Nmax::SEPARATOR)
    end

    def self.call(num)
      new(num).calc
    end

    private

    def scan_numbers
      while line = STDIN.gets do
        line.scan(/[0-9]+/) do |match|
          @numbers << match.to_i
        end
      end
    end
  end
end

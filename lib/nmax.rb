# frozen_string_literal: true

class Nmax
  def initialize(numbers)
    @max_numbers_count = numbers.to_i
    @numbers = []
    scan_numbers
  end

  def calc
    @numbers.max(@max_numbers_count)
            .join(', ')
  end

  def self.call(num)
    new(num).calc
  end

  private

  def scan_numbers
    puts STDIN.gets
  end
end

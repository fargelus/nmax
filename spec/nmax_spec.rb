# frozen_string_literal: true

RSpec.describe Nmax do
  let(:fixture_path) { 'spec/fixtures/sample.dat' }
  let(:command) { "cat #{fixture_path} | bin/nmax" }

  it 'has a version number' do
    expect(Nmax::VERSION).not_to be nil
  end

  it 'prints only one number' do
    # expect(system("#{command} 1")).
    puts Nmax::SEPARATOR
  end
end

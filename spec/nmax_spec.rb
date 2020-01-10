# frozen_string_literal: true

RSpec.describe Nmax do
  let(:fixture_path) { 'spec/fixtures/sample.dat' }
  let(:command) { "cat #{fixture_path} | bin/nmax" }

  it 'has a version number' do
    expect(Nmax::VERSION).not_to be nil
  end

  it 'prints only one number' do
    output = `#{command} 1`
    number_count = output.split(Nmax::SEPARATOR)
                         .size
    expect(number_count).to eql 1
  end

  it 'prints nothing when no args passed' do
    output = `#{command}`
    expect(output).to eql "\n"
  end

  it 'prints maximum number' do
    output = `echo 1, 2, 3 | bin/nmax 1`
    expect(output.to_i).to eql 3
  end
end

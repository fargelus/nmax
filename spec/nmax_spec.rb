# frozen_string_literal: true

RSpec.describe Nmax do
  it 'has a version number' do
    expect(Nmax::VERSION).not_to be nil
  end

  it 'prints' do
    Nmax::Scanner.call(1)
  end
end

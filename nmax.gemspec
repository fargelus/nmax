# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nmax/meta'

Gem::Specification.new do |spec|
  spec.name          = 'nmax'
  spec.version       = Nmax::VERSION
  spec.authors       = ['fargelus']
  spec.email         = ['ddraudred@gmail.com']

  spec.summary       = 'Max n numbers in text'
  spec.description   = 'This library find n max numbers in text'
  spec.homepage      = 'https://github.com/fargelus/nmax'
  spec.license       = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec)/}) }
  end
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end

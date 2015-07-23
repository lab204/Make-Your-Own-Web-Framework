# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hamster/version'

Gem::Specification.new do |spec|
  spec.name          = "hamster"
  spec.version       = Hamster::VERSION
  spec.authors       = ["sllt"]
  spec.email         = ["shenlongml@gmail.com"]

  spec.summary       = %q{a simple web framework}
  spec.description   = %q{a simple web framework}
  spec.homepage      = "https://github.com/lab204"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://github.com/lab204"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = Dir['*'] + Dir['bin/*'] + Dir['lib/*.rb'] + Dir['spec/*']
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end

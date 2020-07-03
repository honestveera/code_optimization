# coding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "code_optimization/version"

Gem::Specification.new do |spec|
  spec.name          = "code_optimization"
  spec.version       = CodeOptimization::VERSION
  spec.authors       = ["Honestraj Kandhasamy"]
  spec.email         = ["honestraj.it@gmail.com"]

  spec.summary       = %q{TODO: CodeOptimization}
  spec.description   = %q{TODO: About
                          The best way to write a code called as code optimization. The best ways are ruby styleguide, rails styleguide, code reusability, without code duplication, without security vulnerabilities and without N+1 queries. The above each and every best ways are have some libraries.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

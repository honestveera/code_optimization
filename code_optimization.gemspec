# coding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "code_optimization/version"

Gem::Specification.new do |spec|
  spec.name          = "code_optimization"
  spec.version       = CodeOptimization::VERSION
  spec.authors       = ["Honestraj Kandhasamy"]
  spec.email         = ["honestraj.it@gmail.com"]

  spec.summary       = %q{CodeOptimization}
  spec.description   = %q{The best way to write a code called as code optimization. The best ways are ruby styleguide, rails styleguide, code reusability, without code duplication, without security vulnerabilities and without N+1 queries. The above each and every best ways are have some libraries.}
  spec.homepage      = 'https://rubygems.org/gems/code_optimization'
  spec.license       = "MIT"
  spec.metadata    = { "source_code_uri" => "https://github.com/honestveera/code_optimization" }

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "brakeman"
  spec.add_dependency "bullet"
  spec.add_dependency "rails_best_practices"
  spec.add_dependency "rack-mini-profiler"
  spec.add_dependency "rubocop"
  spec.add_dependency "rubycritic"
end

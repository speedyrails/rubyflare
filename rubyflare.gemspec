# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubyflare/version'

Gem::Specification.new do |spec|
  spec.name          = "rubyflare"
  spec.version       = Rubyflare::VERSION
  spec.authors       = ["Trevor Wistaff"]
  spec.email         = ["trev@a07.com.au"]

  spec.summary       = %q{Thin Ruby wrapper around Cloudflare's V4 API.}
  spec.description   = %q{Thin Ruby wrapper around Cloudflare's V4 API for good measure!}
  spec.homepage      = "https://github.com/trev/rubyflare"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.0'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.4"
  spec.add_development_dependency "webmock", "~> 1.22"
  spec.add_development_dependency "vcr", "~> 2.9"
  spec.add_development_dependency "codeclimate-test-reporter", "~> 0.4.8"

  spec.add_runtime_dependency "curb", "~> 0.9.10"
end

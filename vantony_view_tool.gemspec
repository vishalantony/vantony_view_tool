# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "vantony_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "vantony_view_tool"
  spec.version       = VantonyViewTool::VERSION
  spec.authors       = ["Vishal Antony"]
  spec.email         = ["vishal.antony@freshworks.com"]

  spec.summary       = %q{Just learning how to create a ruby gem}
  spec.description   = %q{A simple gem which can output your name and message with copyright symbol.}
  spec.homepage      = "https://github.com/vantony_view_tool"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end

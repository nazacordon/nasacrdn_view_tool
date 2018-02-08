
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "nasacrdn_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "nasacrdn_view_tool"
  spec.version       = NasacrdnViewTool::VERSION
  spec.authors       = ["Nash Acordon"]
  spec.email         = ["dev.kreeytib.com"]

  spec.summary       = %q{Varous view specific methods for application I use.}
  spec.description   = %q{Provides generated HTML data for Rails applications.}
  spec.homepage      = "https://kreeytib.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end

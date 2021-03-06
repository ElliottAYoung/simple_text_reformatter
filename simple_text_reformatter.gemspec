
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "simple_text_reformatter/version"

Gem::Specification.new do |spec|
  spec.name          = "simple_text_reformatter"
  spec.version       = SimpleTextReformatter::VERSION
  spec.authors       = ["Elliott Young"]
  spec.email         = ["elliott.a.young@gmail.com"]

  spec.summary       = "A very simple text reformatter. For use in another project, but I suppose could be useful."
  spec.description   = "A very simple text reformatter. For use in another project, but I suppose could be useful."
  spec.homepage      = "https://github.com/ElliottAYoung/simple_text_reformatter"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rb-readline"

  spec.add_dependency "money"
end

require_relative 'lib/naitya_test_gem/version'

Gem::Specification.new do |spec|
  spec.name          = "naitya_test_gem"
  spec.version       = NaityaTestGem::VERSION
  spec.authors       = ["Naitya"]
  spec.email         = ["naitya0412@gmail.com"]

  spec.summary       = "Shuffle string. Create to study ruby."
  spec.description   = "Shuffle the modified string. This gem is created to study ruby gem"
  spec.homepage      = "https://github.com/yuji-naito/naitya_test_gem"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end

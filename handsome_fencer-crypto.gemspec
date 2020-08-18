
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "handsome_fencer/crypto/version"

Gem::Specification.new do |spec|
  spec.name          = "handsome_fencer-crypto"
  spec.version       = HandsomeFencer::Crypto::VERSION
  spec.authors       = ["schadenfred"]
  spec.email         = ["fred.schoeneman@gmail.com"]

  spec.summary       = %q{Crypto using OpenSSL}
  spec.description   = %q{Used by HFCI.}
  spec.homepage      = "https://github.com/schadenfred/handsome_fencer-crypto"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "guard"
  spec.add_dependency "guard-minitest"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "handsome_fencer-test"
end

require_relative 'lib/github_gem_owners/version'

Gem::Specification.new do |spec|
  spec.name          = "github_gem_owners"
  spec.version       = GithubGemOwners::VERSION
  spec.authors       = ["David Schmitt"]
  spec.email         = ["david.schmitt@puppet.com"]

  spec.summary       = %q{A set of scripts managing owners on rubygems based off github owners.}
  spec.homepage      = "https://github.com/puppetlabs/github_gem_owners"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/puppetlabs/github_gem_owners"
  spec.metadata["changelog_uri"] = "https://github.com/puppetlabs/github_gem_owners/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end

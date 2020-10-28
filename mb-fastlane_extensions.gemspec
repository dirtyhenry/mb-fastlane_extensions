# frozen_string_literal: true

require_relative 'lib/mb/fastlane_extensions/version'

Gem::Specification.new do |spec|
  spec.name          = 'mb-fastlane_extensions'
  spec.version       = Mb::FastlaneExtensions::VERSION
  spec.authors       = ['Mickaël Floc’hlay']
  spec.email         = ['mickael.flochlay@memo.bank']

  spec.summary       = 'Extensions for Fastlane.'
  spec.description   = 'Extensions for Fastlane.'
  spec.homepage      = 'https://github.com/dirtyhenry/mb-fastlane_extensions'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.4.0')

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/dirtyhenry/mb-fastlane_extensions'
  spec.metadata['changelog_uri'] = 'https://github.com/dirtyhenry/mb-fastlane_extensions/blob/main/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'rubocop'
end

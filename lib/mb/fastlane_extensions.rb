# frozen_string_literal: true

require 'mb/fastlane_extensions/version'

module Mb
  # Extensions to Fastlane as needed by MB.
  module FastlaneExtensions
    class Error < StandardError; end

    def self.trim_prerelease_info(semantic_version)
      # rubocop:disable Layout/LineLength
      semver_regexp = /(0|[1-9]\d*)\.(0|[1-9]\d*)\.(0|[1-9]\d*)(?:-((?:0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\.(?:0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\+([0-9a-zA-Z-]+(?:\.[0-9a-zA-Z-]+)*))?/
      # rubocop:enable Layout/LineLength

      matched_data = semver_regexp.match(semantic_version)
      raise Error if matched_data.nil?

      [matched_data[1], matched_data[2], matched_data[3]].join('.')
    end
  end
end

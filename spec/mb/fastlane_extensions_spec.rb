# frozen_string_literal: true

RSpec.describe Mb::FastlaneExtensions do
  it 'has a version number' do
    expect(Mb::FastlaneExtensions::VERSION).not_to be nil
  end

  it 'can trim semantic version tags' do
    expect(Mb::FastlaneExtensions.trim_prerelease_info('1.0.0')).to eq('1.0.0')
    expect(Mb::FastlaneExtensions.trim_prerelease_info('1.0.0-alpha')).to eq('1.0.0')
    expect(Mb::FastlaneExtensions.trim_prerelease_info('3.2.1-alpha.123')).to eq('3.2.1')
    expect { Mb::FastlaneExtensions.trim_prerelease_info('not a version') }
      .to raise_error(Mb::FastlaneExtensions::Error)
  end
end

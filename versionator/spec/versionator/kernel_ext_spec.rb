require 'spec_helper'

RSpec.describe 'Kernel' do
  describe '.Version' do
    it 'returns a Version instance' do
      expect(Version(nil)).to be_instance_of Versionator::Version
    end

    it 'returns the object itself when is a kind of Version' do
      raw = Versionator::Version.new '0.1'

      expect(Version(raw)).to eq raw
    end
  end
end

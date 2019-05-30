require 'spec_helper'

RSpec.describe Versionator::Version do
  describe '#to_s' do
    it 'returns the string representation of the version' do
      version = described_class.new '2.1.5'

      expect(version.to_s).to eq '2.1.5'
    end

    it 'returns a string that can be changed without affecting version instance' do
      version = described_class.new '3.0.1'

      # Change the string object itself.
      version.to_s.gsub!(/0/, '1')

      expect(version.to_s).to eq '3.0.1'
    end
  end

  describe '#to_version' do
    it 'returns itself' do
      version = described_class.new '2.1'

      expect(version.to_version).to eq version
    end
  end

  describe '#to_i' do
    it 'returns an integer representation of the version' do
      version = described_class.new '2.5.2'

      expect(version.to_i).to eq 252
    end
  end

  describe '#<=>' do
    it 'returns zero when objects represent the same version' do
      version1 = described_class.new '0.1'
      version2 = described_class.new '0.1'

      expect(version1 <=> version2).to eq 0
    end

    it 'returns positive one whtn receiver is greater than the other object' do
      version1 = described_class.new '2'
      version2 = described_class.new '1'

      expect(version1 <=> version2).to eq 1
    end
  end
end

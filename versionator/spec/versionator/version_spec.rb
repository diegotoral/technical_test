require 'spec_helper'

RSpec.describe Versionator::Version do
  describe '#major' do
    it 'returns the integer representation for the major version' do
      version = described_class.new '2'

      expect(version.major).to eq(2)
    end

    context 'when not specified on the version' do
      it 'default to zero' do
        version = described_class.new ''

        expect(version.major).to eq(0)
      end
    end
  end

  describe '#minor' do
    it 'returns the integer representation for the minor version' do
      version = described_class.new '2.1'

      expect(version.minor).to eq(1)
    end

    context 'when not specified on the version' do
      it 'default to zero' do
        version = described_class.new '2'

        expect(version.minor).to eq(0)
      end
    end
  end

  describe 'patch' do
    it 'returns the integer representation for the patch' do
      version = described_class.new '2.1.3'

      expect(version.patch).to eq(3)
    end

    context 'when not specified on the version' do
      it 'default to zero' do
        version = described_class.new '2.2'

        expect(version.patch).to eq(0)
      end
    end
  end

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

  describe '#<=>' do
    it 'returns zero when objects represent the same version' do
      version1 = described_class.new '0.1'
      version2 = described_class.new '0.1'

      expect(version1 <=> version2).to eq 0
    end

    it 'returns positive one whtn receiver is greater than the other object' do
      version1 = described_class.new '2.1'
      version2 = described_class.new '1.1.1.1'

      expect(version1 <=> version2).to eq 1
    end
  end
end

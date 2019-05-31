module Versionator
  VERSION = "0.1.0"

  class Version
    include Comparable

    attr_reader :major, :minor, :patch

    def initialize(version)
      @raw_version = version.to_s
      @major, @minor, @patch = raw_version.split('.').map(&:to_i)
      @major ||= 0
      @minor ||= 0
      @patch ||= 0
    end

    def <=>(other)
      if major > other.major
        return 1
      elsif minor > other.minor
        return -1
      else
        0
      end
    end

    def to_s
      raw_version.dup
    end

    def to_version
      self
    end

    private

    attr_reader :raw_version
  end
end

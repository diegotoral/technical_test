module Versionator
  VERSION = "0.1.0"

  class Version
    include Comparable

    def initialize(version)
      @raw = version.to_s
      @value = raw.gsub(/\./, '').to_i
    end

    def <=>(other)
      to_i <=> other.to_i
    end

    def to_s
      raw.dup
    end

    def to_i
      value
    end

    def to_version
      self
    end

    private

    attr_reader :value, :raw
  end
end

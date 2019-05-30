module Kernel
  # Returns value as a Version instance
  # Version mimics other Kernel methods like Array allowing easily convertion
  # of values to Version instances.
  #
  # @param value [String] the value to convert
  # @return [Version] the value as an Version instance
  def Version(value)
    case value
    when Versionator::Version
      value
    else
      Versionator::Version.new value
    end
  end

  module_function :Version
end

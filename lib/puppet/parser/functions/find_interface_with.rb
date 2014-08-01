module Puppet::Parser::Functions
  newfunction(:find_interface_with,
             :type => :rvalue) do |args|

    raise(Puppet::ParseError, "find_interface_with(): Wrong number of arguments " +
          "given (#{args.size} for 2)") if args.size != 2

    interfaces = lookupvar('interfaces')

    # If we do not have any interfaces, then there are no requested attributes
    return nil if (interfaces == :undefined)

    interfaces = interfaces.split(',')

    attribute, value = args

    result = nil
    interfaces.each do |iface|
      if value == lookupvar("#{attribute}_#{iface}")
        result = iface
        break
      end
    end

    result

  end
end

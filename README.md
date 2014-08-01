This is a puppet function that will look for a network interface with
the given attributes and return the interface name.

    find_interface_with('ipaddress', '127.0.0.1') => lo
    find_interface_with('macaddress', '52:54:00:09:c2:2a') => virbr0

If no match interface is found, returns `nil`.


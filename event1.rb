require 'eventmachine'

class Echo < EM::Connection
  def receive_data(data)
    send_data(data)
  end
end

EM.run do
  EM.start_server("0.0.0.0", 1337, Echo)
end

# Test via: telnet 127.0.0.1 1337
# Mountain Lion, start telnet via: sudo /usr/libexec/telnetd -debug

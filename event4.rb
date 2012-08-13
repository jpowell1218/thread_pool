# Deferring

require 'eventmachine'

EM.run do
  EM.add_periodic_timer(1) do
    puts "time elapsed"
  end
  EM.defer do
    logs = IO.readlines('/var/log/kernel.log')
  end
end

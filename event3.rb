require 'eventmachine'


EM.run do
  EM.add_timer(10) do
    puts "STOP"
    EM.stop_event_loop
  end

  EM.add_periodic_timer(1) do
    puts "time elapsed"
  end
end

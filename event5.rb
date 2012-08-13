# Spawned processes

require 'eventmachine'
EM.run do
  spawned_process = EM.spawn do |did_what|
    puts "I just " + did_what
  end
  
  EM.add_periodic_timer(1) do
    spawned_process.notify "ate"
  end
 
  EM.add_periodic_timer(2) do
    spawned_process.notify "slept"
  end

end

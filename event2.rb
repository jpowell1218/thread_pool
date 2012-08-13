require 'eventmachine'

count = 1

EM.run do
  EM.add_periodic_timer(1) do
    count += 1
    puts "timer #{count} elapsed at #{Time.now}"
  end
end

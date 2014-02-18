#!/usr/bin/env ruby

class String
  def with_puts
    puts self.inspect
  end
end

class MyRandom
    
  def self.rand(int)
    number_size = int.to_s.size
    number = int.to_i
    
    mstime = Time.now.to_f.to_s.split('.').last
    random_timesize = mstime.to_s.size
    
    random_range = (random_timesize - number_size )
    random = mstime.slice(random_range..random_timesize).to_i
    
#    random.to_s.with_puts
#    number.to_s.with_puts
    
    if random >= number
      return random.to_s.slice(1..number).to_i
    else
      return random
    end
  end

end

puts MyRandom.rand(ARGV[0])

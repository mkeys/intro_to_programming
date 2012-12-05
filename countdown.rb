new_years = Time.local(2012,12,31,23,59,59)
today = Time.now
#Setting functions for the last second of 2012 and today too
time_left = new_years - today
time_left_real = time_left.to_i
humans = Time.at(time_left_real)
#Divide the human time by 7 to get the dog time
dogs = Time.at(time_left_real / 7)
p "Start getting your resolutions ready.  There are only #{humans.month} months, #{humans.day} days, #{humans.hour} hours, #{humans.min} minutes, and #{humans.sec} seconds left until the New Year."
p "Unless you're a dog, in which case you only have to wait #{dogs.month} month, #{dogs.day} days, #{dogs.hour} hours, #{dogs.min} minutes, and #{dogs.sec} seconds."
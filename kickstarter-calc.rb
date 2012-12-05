kicks_percent = 0.05
#Percent Kickstarter makes off each successful project
success_dollars = 305000000
#The amount of money contributed to successful projects
kicks_profit = success_dollars * kicks_percent
kicks_profit = kicks_profit.to_i
require 'date'
#Necessary to use before Date classes
kicks_birth = Date.new(2009, 4, 28)
today = Date.today
#Sets the date Kickstarter launched and today's date
days = (today - kicks_birth).to_i
daily_profit = kicks_profit / days
p "The money grubbers at Kickstarter have been making $#{daily_profit} a day since they started."
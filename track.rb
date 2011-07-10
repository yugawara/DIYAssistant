#!/usr/bin/env ruby
require 'date'
class FirstDay

end
@tasks = []
class Task
	attr_accessor  :text
	attr_accessor  :entered_date
	
	def initialize stuff	
		@text  = stuff
	end
end
class BuildTask < Task
end
class GarbageTask < Task
end
class MoveTask < Task
end
class DemolishTask < Task
end
class GardenTask < Task
end
@tasks << BuildTask.new("measure, order granite countertop")
@tasks << GarbageTask.new("get rid of garbage outside")
@tasks << MoveTask.new("move hardware and useful woed on deck to shed")
@tasks << DemolishTask.new("dispose of garbage on deck dismantle dec k in preparation for loki extrension")
@tasks << GardenTask.new("weed mikan field")
@tasks.each{|x|x.entered_date=Date.today}
@tasks.each{|x|puts x.text}
class DisplayTasks

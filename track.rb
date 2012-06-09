#!/usr/bin/env ruby
require 'rubygems'
require 'date'
require 'yaml'
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
class RecreationTask < Task
end
@tasks << BuildTask.new("measure, order granite countertop")
gtask =  GarbageTask.new("get rid of garbage outside")
class << gtask
	def phone
		'garbage person'
	end
end
@tasks << gtask
@tasks << MoveTask.new("move hardware and useful woed on deck to shed")
@tasks << DemolishTask.new("dispose of garbage on deck dismantle dec k in preparation for loki extrension")
@tasks << GardenTask.new("weed mikan field")
@tasks << RecreationTask.new("go to the beach")
@tasks.each{|x|x.entered_date=Date.today}
@tasks.each{|x|puts x.text}
class DisplayTasks
end
class PMJ
end

@tasks.each{|x|
	if x.respond_to? :phone
		puts "PHONE CALL | #{x.class.name} |#{x.phone}"
	end
}
secret =  YAML::load( File.open(File.expand_path '~/money/secret.yml' ) ) 
p secret



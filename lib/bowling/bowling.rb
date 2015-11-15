module Bowling
	class Bowling

		def initialize
			@score = 0
			@rolls = []
			@current_roll = 0
		end

		def roll(pins)
			@rolls[@current_roll] = pins
			@current_roll += 1
		end

		def score
			score = 0
			@rolls.each{ |roll|
				score += roll
			}
			score
		end
	end
end
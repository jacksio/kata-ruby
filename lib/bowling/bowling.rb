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
			frameIndex = 0
			while @rolls[frameIndex]
				if is_strike?( frameIndex )
					score += ( 10 + @rolls[frameIndex + 1] + @rolls[frameIndex + 2] )
					frameIndex += 1
				elsif is_spare?( frameIndex )
					score += ( 10 + @rolls[frameIndex + 2] )
					frameIndex += 2
				else
					score += ( @rolls[frameIndex] + @rolls[frameIndex + 1] )
					frameIndex += 2
				end
			end
			score
		end

		private
		def is_spare?(frameIndex)
			@rolls[frameIndex] + @rolls[frameIndex + 1] == 10
		end

		def is_strike?(frameIndex)
			@rolls[frameIndex] == 10
		end
	end
end
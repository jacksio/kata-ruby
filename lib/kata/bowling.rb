module Kata
	class Bowling

		def initialize
			@score = 0
			@rolls = []
		end

		def roll(pins)
			@rolls << pins
		end

		def score
			score = 0
			frameIndex = 0
			(1..10).each do # total 10 frame
				if is_strike?( frameIndex )
					score += ( 10 + strike_bonus( frameIndex ) )
					frameIndex += 1
				elsif is_spare?( frameIndex )
					score += ( 10 + spare_bonus( frameIndex ) )
					frameIndex += 2
				else
					score += sum_of_balls_in_frame( frameIndex )
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

		def sum_of_balls_in_frame(frameIndex)
			@rolls[frameIndex] + @rolls[frameIndex + 1];
		end

		def spare_bonus(frameIndex)
		    @rolls[frameIndex + 2];
		end

		def strike_bonus(frameIndex)
		    @rolls[frameIndex + 1] + @rolls[frameIndex + 2];
		end

	end
end
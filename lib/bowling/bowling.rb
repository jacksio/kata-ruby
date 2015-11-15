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
			frame = 0
			while frame < 10
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
				frame += 1
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
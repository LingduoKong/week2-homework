class PlayController < ApplicationController
	$target = 0;
	def roll
		@numbers = [1,2,3,4,5,6].sample(2);
		@result = @numbers[1]+@numbers[0];
		if($target==0)
			if(@result==7||@result==11)
				@status = 'You win!'
				@reminder = nil
				@button = "Start over"
				@url = "/dice"
				$target = 0;
			elsif (@result==2||@result==3||@result==12)
				@status = 'You lose'
				@reminder = nil
				@button = "Start over"
				@url = "/dice"
				$target = 0;
			else
				$target = @result;
				@status = "You goal is now #{$target}"
				@reminder = "Now try to get #{$target} again before you roll a 7."
				@button = "Roll again"
				@url = "/dice/roll"
			end	
		else 
			if (@result==$target)
				@status = "You win"
				@button = "Start over"
				@url = "/dice"
				$target = 0;
			elsif(@result!=7)
				@status = "Your goal is #{$target} but you rolled #{@result}. You can roll again."
				@button = "Roll agian"
				@url = "/dice/roll"
			else 
				@status = 'You lose'
				@button = "Start over"
				@url = "/dice"
				$target = 0;
			end
		end	
		render 'roll'
	end
end
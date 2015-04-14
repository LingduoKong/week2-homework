class RpsplayController < ApplicationController

	def getResult
		@computer = ["rock","paper","scissors"].sample
		@person = params[:weapon]
		if(@computer==@person)
			@isWin = 'It is a Tie!'
		elsif (@computer=='rock'&&@person=='scissors'||
			@computer=='paper'&&@person=='rock'||
			@computer=='scissors'&&@person=='paper')
			@isWin = 'You lose!'
		else 
			@isWin = 'You win!'	
		end	
		render 'rps_play'
	end
end
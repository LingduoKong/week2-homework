class GreetController < ApplicationController

	def hello
		@name = params[:salutation]
		if(@name==nil)
			@name = 'hello'
		end
		render "greet"
	end

end
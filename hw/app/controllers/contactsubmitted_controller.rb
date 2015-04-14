class ContactsubmittedController < ApplicationController

	def submitted
		@first_name = params[:first_name]
		@last_name = params[:last_name]
		render "contactsubmitted"
	end
end
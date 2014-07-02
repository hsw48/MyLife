class StepsController < ApplicationController

before_action :authenticate_user!	


	def index
		@steps = Step.all

	end


end 
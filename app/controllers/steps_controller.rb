class StepsController < ApplicationController

before_action :authenticate_user!	


	def index
		@steps = Step.all
	end

	def new
		@step = Step.new
	end
	
	def create
		@step = Step.new(step_params)
		@step.save
	end

	private

	def step_params
		params.require(:step)
	end
	


end 
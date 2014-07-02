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
		redirect_to steps_path
	end
	def destroy
		@step = Step.find(params[:id])
		@step.destroy

		redirect_to steps_path
	end

	private

	def step_params
		params.require(:step).permit(:title, :post)
	end
	


end 
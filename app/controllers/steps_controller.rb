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

		@post = Post.new(:body => params[:body])
		@post.save

		@step.posts << @post

		@step.save
		redirect_to steps_path
	end

	def destroy
		@step = Step.find(params[:id])
		@step.destroy

		redirect_to steps_path
	end

	def show 
		@step = Step.find(params[:id])
		 
		
	end 

	private

	def step_params
		params.require(:step).permit(:title, :event_date)
	end
	


end 
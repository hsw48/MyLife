class StepsController < ApplicationController

before_action :authenticate_user!	


	def index
		if params[:year]
			# filter by year and show the steps only from this year
				@steps = Step.filter_by_year(params[:year])
				

		else 
			# see the steps normally (maybe never allow this to happen in the future)
			@steps = Step.filter(params[:query])

		end


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
		@posts = Post.filter(params[:query], params[:id] ) 
		# @step.posts 

		
	end 


	private

	def step_params
		params.require(:step).permit(:title, :event_date)
	end
	


end 
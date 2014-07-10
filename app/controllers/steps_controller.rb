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
		@tags_array = ["", "Travel", "Journal", "Hobbies", "Bucket List", "First Time I...", "Dream", "Favorites"]
	end

	def create
		@step = Step.new(step_params)
		@post = Post.new(body: params[:body])
		@step.posts << @post
		@post.save
		@step.save

		redirect_to "/steps?year=#{@step.event_date.year}"
	end

	def destroy
		@step = Step.find(params[:id])
		@step.destroy

		redirect_to "/steps?year=#{@step.event_date.year}"
	end

	def show 

		@step = Step.find(params[:id])




		@posts = Post.filter(params[:query], params[:id] ) 
		# @step.posts 

		
	end 

	private

		def step_params
			params.require(:step).permit(:title, :event_date, :tags)
		end

end 
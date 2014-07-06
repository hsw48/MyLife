class PostsController < ApplicationController

	def new
		@post = Post.new 
	end 

	def create
		# find the step that we are interested (Step.find(...))

		# create a post with the proper body

		# add that post to the posts of the step we're interested in 

		# redirect to the step that we just added a post to

		
		# redirect_to "/steps/#{params[:]}"
	end


	
	private

	def step_params
		params.require(:post).permit(:step_id)
	end
end 
class PostsController < ApplicationController

	def new
		@post = Post.new 
	end 

	def create
		# find the step that we are interested (Step.find(...))

		
		@step = Step.find(params[:step_id])

		# create a post with the proper body

		@post = Post.new(:body => params[:body])
		@post.save

		# add that post to the posts of the step we're interested in 
		@step.posts << @post

		# redirect to the step that we just added a post to

		redirect_to "/steps/#{params[:step_id]}"

	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy

		redirect_to "/steps/#{params[:step_id]}"
	end 

	
	# private

	# def step_params
	# 	params.require(:post).permit(:step_id)
	# end
end 
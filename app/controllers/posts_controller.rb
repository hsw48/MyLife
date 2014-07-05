class PostsController < ApplicationController

	def new

		@post = Post.new 

	end 



	
	private

	def step_params
		params.require(:post).permit(:step_id)
	end
end 
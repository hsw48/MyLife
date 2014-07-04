class PostsController < ApplicationController

	
	private

	def step_params
		params.require(:post).permit(:step_id)
	end
end 
class PostsController < ApplicationController

	def new
		@post = Post.new 
	end 



	def index
		@rem_array = []
		@posts = Post.all
		@posts.each do |post|
		@rem_array << post.body 
		@rem_array.sample(5)

		end

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
		redirect_to "/steps/#{@post.step_id}"
	end 

	# private

	# def step_params
	# 	params.require(:post).permit(:step_id)
	# end
end 
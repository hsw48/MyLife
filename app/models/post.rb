class Post < ActiveRecord::Base
 	belongs_to :step




	def self.filter(query, params_step_id)


		query.blank? ? Step.find(params_step_id).posts : Post.where("step_id = ? AND lower(body) LIKE '%#{query}%'", params_step_id)

	end 




end 
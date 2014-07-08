class Step < ActiveRecord::Base
	belongs_to :user
	has_many :posts, dependent: :destroy


	  def self.filter(query)

	    query.blank? ? Step.all : Step.where("lower(title) LIKE '%#{query}%'")

	  end 

# ternary operater

# if query.blank? 
# 	Step.all
# else
# 	Step.where





	# def self.filter(year)

	# 	 query.blank? ? Step.all : Step.where("lower(title) LIKE '%#{query}%'")
	# end 

end 



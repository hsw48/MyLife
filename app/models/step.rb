class Step < ActiveRecord::Base
	belongs_to :user
	has_many :posts, dependent: :destroy


	 def after_save
	 	
  	 end




	  def self.filter(query)

	    query.blank? ? Step.all : Step.where("lower(title) LIKE '%#{query}%'")


	  end  

	  def self.filter_by_year(step_year)

	  	steps_array = []

	  		Step.all.each do |step| 


		  		if step.event_date.year == step_year.to_i
		  			steps_array << step 		
		  		end

	  		# Loop through all the steps and find those where event_date's year is the same as 'year' from params
				end 
				 steps_array
	  end

	  # find all the steps where the event_date's year is the same as the year searched for 
	  # Step.where(event_date: => "#{year}")

# ternary operater

# if query.blank? 
# 	Step.all
# else
# 	Step.where





	# def self.filter(year)

	# 	 query.blank? ? Step.all : Step.where("lower(title) LIKE '%#{query}%'")
	# end 

end 



class HomesController < ApplicationController
	


	def index

		@years_array = []

			Step.all.each do |step|
				@years_array << step.event_date.year
				@years_array.uniq!
				@years_array.sort!
				@years_array.reverse!
			end


		@prompts_array = [

						"What do you remember about the terrorist attacks of September 11, 2001?", 
						"How did you meet your spouse?",
						"When was the last time you changed your perspective on religion?", 
						"Who were some of your childhood role models?", 
						"How did you decide if and where you went to college?",
						"What were your favorite childhood movies?", 
						"Who were some of your best friends in high school?", 
						"What was your most awkward junior high moment?", 
						"What is your favorite specific memory about a pet?", 
						"What was your favorite family vacation?",
						"If you could go back and re-live a day of your life, what would it be? ", 
						"What was your biggest high school or college regret?", 
						"Describe an instance where one of your core beliefs was changed.", 
						"Who was your favorite high school or college teacher and why?", 
						"What is your favorite high school extracurricular memory?", 

						]	

		# @prompt = @prompts_array[rand(@prompts_array)]

		@three_prompts = @prompts_array.sample(3)


		# @prompt = @prompts_array.shuffle.first(3)
	
	end


	
end



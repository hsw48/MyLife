class HomesController < ApplicationController
	


	def index

		@years_array = []

			Step.all.each do |step|
				@years_array << step.event_date.year
				@years_array.uniq!
				@years_array.sort!
				@years_array.reverse!
			end
	end


	
end



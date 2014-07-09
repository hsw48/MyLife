class Home < ActiveRecord::Base
 	
	def profile_pic
    	if self.provider == "facebook" && self.uid
      "https://graph.facebook.com/#{self.uid}/picture"
    	end
	end

end
class StaticPagesController < ApplicationController
	
	def skip_login? #skip login for static pages yayaayay!
		true
	end

	def home
		
	end
end

class ApplicationController < ActionController::Base
	


	before_filter CASClient::Frameworks::Rails::Filter, :unless => :skip_login?
	
	#this before filter is to set a local variable for current user from CAS session
	
	# before_filter :getMe, :unless => :skip_login?

	before_filter :checksignin

	protect_from_forgery with: :exception

	protected

	def getMe
 		@me = User.find_or_create_by_netid( session[:cas_user] )
  		if !@me
    		redirect_to :root
    		return false
  		end
	end

	def skip_login? 
  		false 
	end

	def checksignin
		if session[:cas_user] == nil
			@signedin = false
		else
			getMe
			@signedin = true
		end
	end




end

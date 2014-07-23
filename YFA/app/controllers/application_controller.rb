class ApplicationController < ActionController::Base

# Add this before filter to force CAS Authentication on all controllers + actions
before_filter CASClient::Frameworks::Rails::Filter, :unless => :skip_login?

# Add this before filter to set a local variable for the current user from CAS session
before_filter :getMe

before_filter :getInterest


 # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
 
 
# And their protected methods
protected

def name
     @me.fname.capitalize + " " + @me.lname.capitalize
end

 
def getMe
  @me = User.find_or_create_by_netid( session[:cas_user] )
  
  if !@me
    redirect_to :root
    return false
  end
end

def getInterest
 	@interest ||= Interest.create(user_id: @me.id)
end
 
# hack for skip_before_filter with CAS
# overwrite this method (with 'true') in any controller you want to skip CAS authentication
def skip_login? 
  false 
end

def signedin?
	if session[:cas_user].nil? 
	    return false
	else
		return true
	end
end

def current_user #as inspired by Loide
	@current_user = User.find_by(netid: session[:cas_user]).id
end

end

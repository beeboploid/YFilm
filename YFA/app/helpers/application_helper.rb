module ApplicationHelper
		#Also listed in Application controller: leave these here so the static pages don't throw errors
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

	  def name
     	@me.fname.capitalize + " " + @me.lname.capitalize
	  end

end

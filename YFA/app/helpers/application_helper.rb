module ApplicationHelper

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

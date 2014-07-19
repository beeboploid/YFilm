module ApplicationHelper

	  def signedin?
	    if session[:cas_user].nil? 
	      return false
	    else
	      return true
	    end
	  end

end

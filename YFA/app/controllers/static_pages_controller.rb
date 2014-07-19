class StaticPagesController < ApplicationController
  
  def skip_login? #skip login for static pages yayaayay!
		true
  end

  def home
  end

  def logout
  	reset_session
  	redirect_to "https://secure.its.yale.edu/cas/logout" 
  end
  
end

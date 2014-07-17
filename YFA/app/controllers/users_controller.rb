class UsersController < ApplicationController
  def new
  	redirect_to 'show'
  end

  def signedin?
    if session[:cas_user].exists? 
      return true
    else
      return false
    end
  end

  def create
  	@user = User.new(me_params)
  	@user.save
  	# redirect_to 'show'
  end

  def show
  	@user
  end

  def edit
  end

  def update
  end

 

  	private

  		def me_params
  			params.require(:user).permit(:name, :netid, :college, :year, 
                                      :email, :year, :college, :interests, :bio )
  		end




end

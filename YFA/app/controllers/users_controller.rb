class UsersController < ApplicationController
  def new
  	redirect_to 'show'
  end

  def create
  	@user = User.new(me_params)
  	@user.save
  	# redirect_to 'show'
  end

  def show
  	@user
  end



  def update
  end

  def edit
  end

  	private

  		def me_params
  			params.require(:user).permit(:name, :netid, :college, :year, :email)
  		end




end

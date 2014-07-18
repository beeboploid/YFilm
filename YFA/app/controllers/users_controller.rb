class UsersController < ApplicationController
  

  def index
    redirect_to 'show'
  end

  def new
  	
  end

  def signedin?
    if session[:cas_user].exists? 
      return true
    else
      return false
    end
  end

  def create
  	@me = User.create(me_params)
    @interest = @me.interest.create
  	# redirect_to 'show'
  end

  def show
  	@me
  end

  def edit
    @me = User.find(params[:id])
    @interest = @me.interest
  end

  def update
     @me = User.find(params[:id])
     @interest = @me.interest

    @interest.update(interest_params)
    redirect_to user_path
  end

 

  	private

  		def me_params
  			params.require(:user).permit(:name, :netid, :college, :year, 
                                      :email, :college, :bio )
  		end

      def interest_params
        params.require(:interest).permit(:acting, :directing, :camerawork, :cinematography, :costumes)
      end



end

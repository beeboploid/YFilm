class UsersController < ApplicationController
  

  def index
    
  end

  def new #will need landing page
    @user = User.new

  end


  def create
  	@me = User.create(me_params) #We need to validate that fname, etc is NOT NIL, to prevent ghost users
    @interest = @me.interest.create
  end

  def search

  end

  def show
    @me = User.find(params[:id])
    @attributes = Interest.column_names
    @attributes.reject! {|item| item =~ /id|user_id|updated_at|created_at/ }

  end

  def edit
    @interest = @me.interest
  end

  def update
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
        params.require(:interest).permit(:acting, :directing, :camerawork, :cinematography, :costumes, :sound, :editing)
      end



end

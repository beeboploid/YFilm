class UsersController < ApplicationController
  

  def index
    
  end

  def login
    
  end

  def new #will need landing page
    
  end


  def create
  	@me = User.create(me_params) #We need to validate that fname, etc is NOT NIL, to prevent ghost users
      # if @me.fname == nil || @me.lname == nil || @me.college == nil || @me.year == nil || @me.email == nil
      #   redirect_to edit_users_path
      #   flash[:success] = "Welcome to the YFA! Tell us something about yourself."
      # else 
      #   redirect_to @me

      # end

      # @interest = @me.interest.create
  end

   def edit

    # @interest = @me.interest
   end

  def search

  end

  def show
    @me = User.find(params[:id])
    @attributes = Interest.column_names
    @attributes.reject! {|item| item =~ /id|user_id|updated_at|created_at/ }

  end

 

  def update
    @me.update(me_params)

    # @interest = @me.interest

    # @interest.update(interest_params)
    redirect_to user_path
  end


 

  	private

  		def me_params
  			params.require(:user).permit( :name, :fname, :lname, :college, :year, 
                                      :email, :college, :bio, :password, :password_confirmation, :netid )
  		end

      def interest_params
        params.require(:interest).permit(:acting, :directing, :camerawork, :cinematography, :costumes, :sound, :editing)
      end



end

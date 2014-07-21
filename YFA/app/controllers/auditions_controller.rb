class AuditionsController < ApplicationController
  def new
  	@audition = Audition.new
  end

  def create
  	
  end

  def edit
  end

  def update
  end

  private

  	def audition_params
  		params.require(:audition).permit(:project_id, :user_id, :user_name, :when)
  	end



end

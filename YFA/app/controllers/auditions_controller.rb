class AuditionsController < ApplicationController
  def new
  	@project = Project.find(params[:project])
  	@audition = Audition.new(project_id: params[:project])
  end

  def create
  	@audition = Audition.create(audition_params)

 #  	@project = Project.find_by(id: params[:project_id])
	# @project.auditions.create(audition_params)
	redirect_to audition_path(@audition)
  end

  def show

  	@audition

  end

  def index
  	

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

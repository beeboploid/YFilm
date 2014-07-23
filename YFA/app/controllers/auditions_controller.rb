class AuditionsController < ApplicationController
  def new
  	@project = Project.find(params[:project])
  	@audition = Audition.new(project_id: params[:project])
  end

  def create
  	@audition = Audition.create(audition_params)

    if @audition.role_id == nil 
      redirect_to '/projects/' + audition_params[:project_id].to_s + '/auditions'
    else
      redirect_to project_path(@audition.project_id)
    end
  end

  def show

  	@audition
    @project = Project.find(params[:id])
    @producer_id = Role.find_by(project_id: @project.id).user_id

  end

  def index
  	

  end


  def edit
  end

  def update
    @audition = Audition.find(audition_params[:id])
    @audition.update(audition_params)

    redirect_to project_path(@audition.project_id)
  end

  private

  	def audition_params
  		params.require(:audition).permit(:id, :project_id, :user_id, :user_name, :when, :role_id)
  	end



end

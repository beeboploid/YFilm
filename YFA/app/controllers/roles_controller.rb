class RolesController < ApplicationController
  def new
  end

  def create
  	@project = @me.projects.find(role_params[:id])
  	@role = @project.roles.create(title: role_params[:title], cast: role_params[:cast])
  	redirect_to project_path(@project)
  end

  def update
    
    @r = Role.find(params[:id])
    @r.update(role_params)

    redirect_to project_path(@r.project_id)

  end

  def edit
  end

  	private

  	def role_params
  		params.require(:role).permit(:title, :cast, :id, :user_id)
  	end

end

class RolesController < ApplicationController
  def new
  end

  def create
  	@project = @me.projects.find(role_params[:id])
  	@role = @project.roles.create(title: role_params[:title], cast: role_params[:cast])
  	redirect_to project_path(@project)
  end

  def edit
  end

  	private

  	def role_params
  		params.require(:role).permit(:title, :cast, :id)
  	end

end

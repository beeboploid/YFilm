class RolesController < ApplicationController
  def new
  end

  def create
  	@project = @me.projects.find(role_params[:id])
  	@role = @project.roles.create(title: role_params[:title])
  	redirect_to projects_path
  end

  def edit
  end

  	private

  	def role_params
  		params.require(:role).permit(:title, :id)
  	end

end

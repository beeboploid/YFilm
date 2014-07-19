class ProjectsController < ApplicationController

	def skip_login? #skip login for static pages yayaayay!
		true
  	end

	def index
	end
	
	def new
		@me = User.find_or_create_by_netid( session[:cas_user] )
		@project = @me.projects.new
	end

	def create
		@me = User.find_or_create_by_netid( session[:cas_user] )
		@project = @me.projects.create(project_params)
		redirect_to project_path(@project)
	end

	def show
		@me = User.find_or_create_by_netid( session[:cas_user] )
		@project = @me.projects.find(params[:id])		

		#NOTE: find_by(params[:id]) doesn't work! @me.projects.find_by(id: params[:id]) OR @me.projects.find(params[:id]) are equivalent syntax.
	end

	def edit
		@project = @me.projects.find(params[:id])	
	end

	def update
		@project = @me.projects.find(params[:id])
		@project.update(project_params)	
		redirect_to project_path(@project)
	end

	private

	def project_params
        params.require(:project).permit(:title, :genre, :description, :dates, :producer, :location)
    end
end

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

		

		@project = Project.find(params[:id])
		@producer_id = Role.find_by(project_id: @project.id).user_id
		@producer = User.find_by(id: @producer_id)
  		@role = @project.roles.build

		if signedin? && current_user == @producer_id
			@me = User.find_or_create_by_netid( session[:cas_user] )
			@project = @me.projects.find(params[:id])	
  			@role = @project.roles.build
  		end
		#NOTE: find_by(params[:id]) doesn't work! @me.projects.find_by(id: params[:id]) OR @me.projects.find(params[:id]) are equivalent syntax.
	end

	def edit
		@me = User.find_or_create_by_netid( session[:cas_user] ) #Possible refactor: create an application helper that calls @me when we need it?
		@project = @me.projects.find(params[:id])	
	end

	def update
		@me = User.find_or_create_by_netid( session[:cas_user] )
		@project = @me.projects.find(params[:id])
		@project.update(project_params)	
		redirect_to project_path(@project)
	end

	private

	def project_params
        params.require(:project).permit(:title, :genre, :description, :dates, :producer, :location)
    end
end

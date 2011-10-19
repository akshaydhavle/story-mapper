class ProjectsController < ApplicationController
  
  # View all projects
  def index
    @projects = Project.all
  end
  
  
  # Show an individual project
  def show
    @project = Project.find(params[:id])
  end
end

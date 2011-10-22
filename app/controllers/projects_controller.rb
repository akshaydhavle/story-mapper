class ProjectsController < ApplicationController
  before_filter :authenticate_user!
  
  # View all projects
  def index
    @projects = Project.all
  end
  
  
  # Show an individual project
  def show
    @project = Project.find(params[:id])
  end
  
  # Create a new project
  def new
    @project = Project.new
  end
  
  def create
    @project = Project.new(params[:project])
    if @project.save
      redirect_to projects_path, :notice => "Successfully created #{@project.name}"
    else
      render "new"
    end
  end
  
  # remove a project
  def destroy
    @project = Project.find(params[:id])
    name = @project.name
    @project.destroy
  
    redirect_to projects_path, :notice => "Deleted #{name}"
  end
end

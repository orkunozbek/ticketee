class ProjectsController < ApplicationController
  before_filter :find_project, :except => [:new, :index, :create]
  def index
    @projects = Project.find(:all)
  end
  
  def show

  end
  
  def new
    @project = Project.new
  end
  
  def edit

  end
  
  def create
    @project = Project.new(params[:project])
    @project.save
    if @project.save
      flash[:notice] = "Project has been created"
      redirect_to(@project)
    else
      flash[:alert] = "Project has not been created"
      render :action => 'new'
    end
  end
  
  def update
    if @project.update_attributes(params[:project])
      flash[:notice] = "Project has been updated"
      redirect_to(@project)
    else
      flash[:alert] = "Project has not been updated"
      render :action => "edit"
    end
  end
  
  def destroy
    @project.destroy
    flash[:notice] = "Project has been deleted."
    redirect_to projects_path
  end
  
  private
  def find_project
    @project = Project.find(params[:id])
    rescue ActiveRecord::RecordNotFound
    flash[:alert] = "The project you were looking" +
    " for could not be found."
    redirect_to projects_path
  end
  
end

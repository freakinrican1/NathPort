class ClassProjectsController < ApplicationController
  
  def index
    @projects= ClassProject.all
  end 
  
  def show
    @project = ClassProject.find(params[:id])
  end
  
  def new 
    @project= ClassProject.new 
  end 
  
  def create
    @project= ClassProject.new(params[:class_project])

    if @project.save
      redirect_to projects_path #the "index" action, aliased in our routes folder as "users"
    else
      #1. Display the form
      #2. Show all relevant errors
      render "new" #refers to app/views/users/new
    end
  end
  
  def edit
      @project = ClassProject.find(params[:id])
    end
  
    def update
        @project = ClassProject.find(params[:id])
    
        if @project.update_attributes(params[:class_project])
          redirect_to class_project_path(@project.id)
        else
          render "edit"
        end
      end
  
  
end

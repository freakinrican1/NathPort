class BlogEntriesController < ApplicationController
  
  def index
    @blog_entries= BlogEntry.all
  end 
  
  def show
    @blog_entry = BlogEntry.find(params[:id])
  end
  
  def new 
    @blog_entry= BlogEntry.new 
  end 
  
  def create
    @blog_entry= BlogEntry.new(params[:blog_entry])

    if @blog_entry.save
      redirect_to blog_entries_path #the "index" action, aliased in our routes folder as "users"
    else
      #1. Display the form
      #2. Show all relevant errors
      render "new" #refers to app/views/users/new
    end
  end
  
  def edit
      @blog_entry = BlogEntry.find(params[:id])
    end
  
    def update
        @blog_entry = BlogEntry.find(params[:id])
    
        if @blog_entry.update_attributes(params[:blog_entry])
          redirect_to blog_entry_path(@blog_entry.id)
        else
          render "edit"
        end
      end
  
  
end
  
  


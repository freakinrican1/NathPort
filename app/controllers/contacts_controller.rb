class ContactsController < ApplicationController
  
  def index
    @contacts= Contact.all
  end 
  
  def show
    @contact = Contact.find(params[:id])
  end
  
  def new 
    @contact= Contact.new 
  end 
  
  def create
    @contact= Contact.new(params[:contact])

    if @contact.save
      redirect_to contacts_path #the "index" action, aliased in our routes folder as "users"
    else
      #1. Display the form
      #2. Show all relevant errors
      render "new" #refers to app/views/users/new
    end
  end
  
  def edit
      @contact = Contact.find(params[:id])
    end
  
    def update
        @contact = Contact.find(params[:id])
    
        if @contact.update_attributes(params[:contact])
          redirect_to class_contact_path(@contact.id)
        else
          render "edit"
        end
      end
  
  
end
  
  


NathPort::Application.routes.draw do
    get "welcome" => 'pages#welcome', :as => 'welcome'
    
    get "about" => 'pages#about', :as => 'about'
  
  #----------------------------------------------------------
    
    get "projects" => "class_projects#index", :as => "class_projects"
    
    get "project/new" => 'class_projects#new', :as => "new_project"
    
    post "projects" => 'class_projects#create'
    
    get "projects/:id/edit" => 'class_projects#edit', :as => "edit_project"
  
    put "projects/:id" => 'class_projects#update' # Notice the path is same as 'show' action's.
  
    get "projects/:id" => 'class_projects#show', :as => "class_project"
    
    #----------------------------------------------------------
    
    get "contacts" => "contacts#index", :as => "contacts"
    
    get "contact/new" => 'contacts#new', :as => "new_contact"
    
    post "contacts" => 'contacts#create'
    
    get "contacts/:id/edit" => 'contacts#edit', :as => "edit_contact"
  
    put "contacts/:id" => 'contacts#update' # Notice the path is same as 'show' action's.
  
    get "contacts/:id" => 'contacts#show', :as => "contact"
    
   #------------------------------------------------------------
   
   get "blog_entries" => "blog_entries#index", :as => "blog_entries"
   
   get "blog_entry/new" => 'blog_entries#new', :as => "new_post"
   
   post "blog_entries" => 'blog_entries#create'
   
   get "blog_entries/:id/edit" => 'blog_entries#edit', :as => "edit_blog_entry"
 
   put "blog_entries/:id" => 'blog_entries#update' # Notice the path is same as 'show' action's.
 
   get "blog_entries/:id" => 'blog_entries#show', :as => "blog_entry" 
    
    
    
end



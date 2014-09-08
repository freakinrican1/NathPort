NathPort::Application.routes.draw do
    get "welcome" => 'pages#welcome', :as => 'welcome'
    
    get "about" => 'pages#about', :as => 'about'
end



Rails.application.routes.draw do
  root to: "pages#home"

  get "/login"              => "session#new"      # show the login form
  post "/login"             => "session#create"   # submit the login and authenticate
  get "/logout"           => "session#destroy"

  post "/timesheet/open"    => "timesheets#open"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :activities, :assignments, :clients, :employees, :projects, :timesheets, :timesheet_details, :timesheet_histories, :weeks
end

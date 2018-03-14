Rails.application.routes.draw do
  get "/blogs" => "blogs#index"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/blogs/new" => "blogs#new"

  post "/blogs" => "blogs#create"

  get "/blogs/:id" => "blogs#show"

end

Rails.application.routes.draw do
  get "/blogs" => "blogs#index"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get "/blogs/new" => "blogs#new"
  # post "/blogs" => "blogs#create"
  # get "/blogs/:id" => "blogs#show"
  # get "/blogs/:id/edit" => "blogs#edit", as: "edit_blog"
  # patch "blogs/:id" => "blogs#update", as: "update_blog"
  root "blog#index"#URLが無い時indexを表示
  resources :blogs
  #resouces: よく使うルーティングを自動で定義してくれるメソッド
  ##これ１行で定義できてスーパー便利
  #定義はターミナルに"rake routes"で確認できる
end

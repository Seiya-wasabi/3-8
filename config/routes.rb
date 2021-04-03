Rails.application.routes.draw do
  get 'todolists/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get 'top' => 'homes#top'
post 'todolists' => 'todolists#create'
# todolists URLをリクエストして、todolistsコントローラーのクリエイトアクションの呼び出し
get 'todolists' => 'todolists#index'
get 'todolists/' => 'todolists#show', as: 'todolist'
end

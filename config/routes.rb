Rails.application.routes.draw do
  get 'posts/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# ルーティングのコード
# HTTPメソッド 'URL' => 'コントローラ#アクション'
  get 'top' => 'root#top'
  post 'posts' => 'posts#create'

  get 'posts' => 'posts#index'

  get 'posts/:id' => 'posts#show', as: 'post'
  # .../posts/1や.../posts/3に該当する
  # 上記のような名前付きルートをしている場合、post_path(post)というURLを組み立てて返すメソッドが使える
  get 'posts/:id/edit' => 'posts#edit', as: 'edit_post'

  patch 'posts/:id' =>'posts#update', as: 'update_post'

  delete 'posts/:id' => 'posts#destroy', as: 'destroy_post'
end

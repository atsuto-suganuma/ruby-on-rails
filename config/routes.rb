Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# ルーティングのコード
# HTTPメソッド 'URL' => 'コントローラ#アクション'
get 'top' => 'root#top'

end

Rails.application.routes.draw do

  # デバイスの設定
  devise_for :users

  # ------------
  # トップ
  # ------------

  # 質問画面へ飛ばす
  root :to => "questions#index"

  # ------------
  # 質問・回答
  # ------------

  # 質問画面
  get "questions" => "questions#index"

  # 回答画面
  post "answer" => "questions#answer"
  get "answer" => "questions#answer"

  # 次へ
  post "next" => "questions#next"
  get "next" => "questions#next"

  # 行きたい
  post "want_to_go" => "questions#want_to_go"
  get "want_to_go" => "questions#want_to_go"

  # 行った
  post "has_gone" => "questions#has_gone"
  get "has_gone" => "questions#has_gone"

  # -------------------
  # OAuth2 for Google
  # -------------------

  get  '/auth/:provider/callback' => 'sessions#callback'
  post '/auth/:provider/callback'  => 'sessions#callback'
  get  '/auth/failure' => 'sessions#failure'
  get  '/logout' => 'sessions#destroy'

end

Rails.application.routes.draw do  
  root 'posts#index'
  
  # get 'homes/index'
  get 'homes/youtube-api-connect' => 'homes#youtube_api_connect'
  get 'homes/youtube-result' => 'homes#youtube_result'
end

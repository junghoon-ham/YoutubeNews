Rails.application.routes.draw do  
  root 'homes#youtube_result'
  
  # get 'homes/index'
  get 'homes/youtube-api-connect' => 'homes#youtube_api_connect'
  get 'homes/youtube-result' => 'homes#youtube_result'
  
  get 'homes#youtube_ytn'
  get 'homes#youtube_jtbc'
  get 'homes#youtube_channelA'
  get 'homes#youtube_mbn'
  get 'homes#youtube_video'
  get 'homes#youtube_sbs'
  get 'homes#youtube_kbs'
  get 'homes#youtube_mbc'
  get 'homes#youtube_tvChoseon'
  get 'homes#youtube_sebese'
end

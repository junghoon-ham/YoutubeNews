Rails.application.routes.draw do  
  root 'homes#youtube_result'
  
  # get 'homes/index'
  get 'homes/youtube-api-connect' => 'homes#youtube_api_connect'
  get 'homes/youtube-result' => 'homes#youtube_result'
  
  get 'homes/youtube_ytn' => 'homes#youtube_ytn'
  get 'homes/youtube_jtbc' => 'homes#youtube_jtbc'
  get 'homes/youtube_channelA' => 'homes#youtube_channelA'
  get 'homes/youtube_mbn' => 'homes#youtube_mbn'
  get 'homes/youtube_video' => 'homes#youtube_video'
  get 'homes/youtube_sbs' => 'homes#youtube_sbs'
  get 'homes/youtube_kbs' => 'homes#youtube_kbs'
  get 'homes/youtube_mbc' => 'homes#youtube_mbc'
  get 'homes/youtube_tvChoseon' => 'homes#youtube_tvChoseon'
  get 'homes/youtube_sebese' => 'homes#youtube_sebese'
  get 'homes/youtube_mbig' => 'homes#youtube_mbig'
  get 'homes/youtube_live' => 'homes#youtube_live'
  
end

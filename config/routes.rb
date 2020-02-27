Rails.application.routes.draw do  
  root 'youtubes#kbs'
  
  # get 'youtubes/index'
  get 'homes/youtube-api-connect' => 'homes#api_connect'
  get 'homes/youtube-result' => 'homes#result'
  
  get 'youtubes/ytn' => 'youtubes#ytn'
  get 'youtubes/jtbc' => 'youtubes#jtbc'
  get 'youtubes/channelA' => 'youtubes#channelA'
  get 'youtubes/mbn' => 'youtubes#mbn'
  get 'youtubes/video' => 'youtubes#video'
  get 'youtubes/sbs' => 'youtubes#sbs'
  get 'youtubes/kbs' => 'youtubes#kbs'
  get 'youtubes/mbc' => 'youtubes#mbc'
  get 'youtubes/tvChoseon' => 'youtubes#tvChoseon'
  get 'youtubes/sebese' => 'youtubes#sebese'
  get 'youtubes/mbig' => 'youtubes#mbig'
  get 'youtubes/live' => 'youtubes#live'
  get 'youtubes/search' => 'youtubes#search'
end

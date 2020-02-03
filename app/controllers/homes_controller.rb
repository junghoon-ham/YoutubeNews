class HomesController < ApplicationController
  def index
  end
  
  ## Youtube API 통신 및 데이터를 가져와서 내 DB에 저장
  def youtube_api_connect
    
  end
  
  ## 내 DB에 저장된 데이터를 Json으로 출력
  def youtube_result
    @youtube = Youtube.all.order(publishedAt: :desc).to_json(:except => [:id, :created_at, :updated_at])
    
    render :json => @youtube
  end
  
  def youtube_ytn
    @youtube = Youtube.where(channelTitle: "UChlgI3UHCOnwUGzWzbJ3H5w").order(publishedAt: :desc).to_json(:except => [:id])
    
    render :json => @youtube
  end
  
  def youtube_jtbc
    @youtube = Youtube.where(channelTitle: "UCsU-I-vHLiaMfV_ceaYz5rQ").order(publishedAt: :desc).to_json(:except => [:id])

    render :json => @youtube
  end
  
  def youtube_channelA
    @youtube = Youtube.where(channelTitle: "UCfq4V1DAuaojnr2ryvWNysw").order(publishedAt: :desc).to_json(:except => [:id])

    render :json => @youtube
  end
  
  def youtube_mbn
    @youtube = Youtube.where(channelTitle: "UCG9aFJTZ-lMCHAiO1KJsirg").order(publishedAt: :desc).to_json(:except => [:id])

    render :json => @youtube
  end
  
  def youtube_sbs
    @youtube = Youtube.where(channelTitle: "UCkinYTS9IHqOEwR1Sze2JTw").order(publishedAt: :desc).to_json(:except => [:id])

    render :json => @youtube
  end
  
  def youtube_kbs
    @youtube = Youtube.where(channelTitle: "UCcQTRi69dsVYHN3exePtZ1A").order(publishedAt: :desc).to_json(:except => [:id])

    render :json => @youtube
  end
  
  def youtube_mbc
    @youtube = Youtube.where(channelTitle: "UCF4Wxdo3inmxP-Y59wXDsFw").order(publishedAt: :desc).to_json(:except => [:id])

    render :json => @youtube
  end
  
  def youtube_tvChoseon
    @youtube = Youtube.where(channelTitle: "UCWlV3Lz_55UaX4JsMj-z__Q").order(publishedAt: :desc).to_json(:except => [:id])

    render :json => @youtube
  end
  
  def youtube_video
    @youtube = Youtube.where(channelTitle: "UCMEbRpvuwTbXxGiyDb1mT8w").order(publishedAt: :desc).to_json(:except => [:id])

    render :json => @youtube
  end
  
  def youtube_sebese
    @youtube = Youtube.where(channelTitle: "UCQabORQKQRHP-iUqe-xIFvg").order(publishedAt: :desc).to_json(:except => [:id])

    render :json => @youtube
  end
  
  def youtube_live
    @youtube = Youtube.where(live: "live").order(publishedAt: :desc).to_json(:except => [:id])

    render :json => @youtube
  end
end

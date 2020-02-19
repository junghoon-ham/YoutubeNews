class HomesController < ApplicationController
  def index
  end
  
  ## Youtube API 통신 및 데이터를 가져와서 내 DB에 저장
  def youtube_api_connect
    
  end
  
  ## 내 DB에 저장된 데이터를 Json으로 출력
  def youtube_result
    @youtube = Youtube.where(live: "none").order(publishedAt: :desc).to_json(:except => [:id, :created_at, :updated_at])
    
    require 'open-uri'
    doc = Nokogiri::HTML(open("https://www.youtube.com/channel/UCQabORQKQRHP-iUqe-xIFvg/videos"), nil, 'UTF-8')
    @today = Time.now.in_time_zone("Asia/Seoul")
    
    puts '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'
    obj = doc.css(".yt-lockup")
    obj.each do |t|
      publishedAt = t.css("div.yt-lockup-meta ul.yt-lockup-meta-info li:nth-of-type(2)").text
      puts '---------------------------------------------'
      puts publishedAt
    end
    
    render :json => @youtube
  end
  
  def youtube_ytn
    @youtube = Youtube.where(channelTitle: "UChlgI3UHCOnwUGzWzbJ3H5w", live: 'none').order(publishedAt: :desc).to_json(:except => [:id])
    
    render :json => @youtube
  end
  
  def youtube_jtbc
    @youtube = Youtube.where(channelTitle: "UCsU-I-vHLiaMfV_ceaYz5rQ", live: 'none').order(publishedAt: :desc).to_json(:except => [:id])

    render :json => @youtube
  end
  
  def youtube_channelA
    @youtube = Youtube.where(channelTitle: "UCfq4V1DAuaojnr2ryvWNysw", live: 'none').order(publishedAt: :desc).to_json(:except => [:id])

    render :json => @youtube
  end
  
  def youtube_mbn
    @youtube = Youtube.where(channelTitle: "UCG9aFJTZ-lMCHAiO1KJsirg", live: 'none').order(publishedAt: :desc).to_json(:except => [:id])

    render :json => @youtube
  end
  
  def youtube_sbs
    @youtube = Youtube.where(channelTitle: "UCkinYTS9IHqOEwR1Sze2JTw", live: 'none').order(publishedAt: :desc).to_json(:except => [:id])

    render :json => @youtube
  end
  
  def youtube_kbs
    @youtube = Youtube.where(channelTitle: "UCcQTRi69dsVYHN3exePtZ1A", live: 'none').order(publishedAt: :desc).to_json(:except => [:id])

    render :json => @youtube
  end
  
  def youtube_mbc
    @youtube = Youtube.where(channelTitle: "UCF4Wxdo3inmxP-Y59wXDsFw", live: 'none').order(publishedAt: :desc).to_json(:except => [:id])

    render :json => @youtube
  end
  
  def youtube_tvChoseon
    @youtube = Youtube.where(channelTitle: "UCWlV3Lz_55UaX4JsMj-z__Q", live: 'none').order(publishedAt: :desc).to_json(:except => [:id])

    render :json => @youtube
  end
  
  def youtube_video
    @youtube = Youtube.where(channelTitle: "UCMEbRpvuwTbXxGiyDb1mT8w", live: 'none').order(publishedAt: :desc).to_json(:except => [:id])

    render :json => @youtube
  end
  
  def youtube_sebese
    @youtube = Youtube.where(channelTitle: "UCQabORQKQRHP-iUqe-xIFvg", live: 'none').order(publishedAt: :desc).to_json(:except => [:id])

    render :json => @youtube
  end
  
  def youtube_mbig
    @youtube = Youtube.where(channelTitle: "UCYRrUD5v5j_Ei8sKOo7mhoQ", live: 'none').order(publishedAt: :desc).to_json(:except => [:id])

    render :json => @youtube
  end
  
  def youtube_live
    @youtube = Youtube.where(live: "live").order(publishedAt: :desc).to_json(:except => [:id])

    render :json => @youtube
  end
end

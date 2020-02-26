class HomesController < ApplicationController
  require 'open-uri'
  
  def index
  end
  
  ## Youtube API 통신 및 데이터를 가져와서 내 DB에 저장
  def youtube_api_connect
    
  end
  
  ## 내 DB에 저장된 데이터를 Json으로 출력
  def youtube_result
    @pageNumber = params[:page].to_i
    @size = params[:size].to_i
    @currentTime = params[:time]
    
    if @pageNumber == 0
      @pageNumber = 1
    end
    
    if @size == 0
      @size = 20
    end
    
    if @currentTime.nil?
      @currentTime = Time.zone.now.strftime('%Y-%m-%d %H:%M:%S')
    else
      @currentTime = @currentTime.to_time.strftime('%Y-%m-%d %H:%M:%S')
    end
    
    if @pageNumber == 1
      @startNumber = 0
      # @data = HitProduct.order("date DESC").uniq.first(@size)
      @youtube = Youtube.where('created_at <= :currnet_time AND live = :live', :currnet_time => @currentTime, :live => 'none' ).order(publishedAt: :desc).uniq.first(@size)
    else
      @startNumber = @pageNumber * 10 + @pageNumber * (@size-10) - @size
      # @data = HitProduct.order("date DESC").uniq.drop(@startNumber).first(@size)
      @youtube = Youtube.where('created_at <= :currnet_time AND live = :live', :currnet_time => @currentTime, :live => 'none' ).order(publishedAt: :desc).uniq.drop(@startNumber).first(@size)
    end
    
    #@youtube = Youtube.where('created_at > ? AND live = ?', 12.hour.ago, 'none').order(publishedAt: :desc).to_json(:except => [:id])
    # @youtube = Youtube.where(live: "none").order(publishedAt: :desc).limit(300).to_json(:except => [:id])
    
    #doc = Nokogiri::HTML(open("https://www.youtube.com/user/NewsKBS/videos?gl=KR&hl=ko"), nil, 'UTF-8')
    #@today = Time.now.in_time_zone("Asia/Seoul")
    
    #@teestArr = []
    #obj = doc.css("div.yt-lockup-meta ul.yt-lockup-meta-info")
    #obj.each do |t|
    #  publishedAt = t.css("li:nth-of-type(2)").text
    #  @teestArr << publishedAt
    #end
    
    render :json => @youtube
  end
  
  def youtube_ytn
    #@youtube = Youtube.where(channelTitle: "UChlgI3UHCOnwUGzWzbJ3H5w", live: 'none').order(publishedAt: :desc).limit(400).to_json(:except => [:id])
    @channelTitle = "UChlgI3UHCOnwUGzWzbJ3H5w"
    
    @pageNumber = params[:page].to_i
    @size = params[:size].to_i
    @currentTime = params[:time]
    
    if @pageNumber == 0
      @pageNumber = 1
    end
    
    if @size == 0
      @size = 20
    end
    
    if @currentTime.nil?
      @currentTime = Time.zone.now.strftime('%Y-%m-%d %H:%M:%S')
    else
      @currentTime = @currentTime.to_time.strftime('%Y-%m-%d %H:%M:%S')
    end
    
    if @pageNumber == 1
      @startNumber = 0
      # @data = HitProduct.order("date DESC").uniq.first(@size)
      @youtube = Youtube.where('created_at <= :currnet_time AND channelTitle = :channelTitle AND live = :live', :currnet_time => @currentTime, :channelTitle => @channelTitle, :live => 'none').order(publishedAt: :desc).uniq.first(@size)
    else
      @startNumber = @pageNumber * 10 + @pageNumber * (@size-10) - @size
      # @data = HitProduct.order("date DESC").uniq.drop(@startNumber).first(@size)
      @youtube = Youtube.where('created_at <= :currnet_time AND channelTitle = :channelTitle AND live = :live', :currnet_time => @currentTime, :channelTitle => @channelTitle, :live => 'none').order(publishedAt: :desc).uniq.drop(@startNumber).first(@size)
    end
    
    render :json => @youtube
  end
  
  def youtube_jtbc
    #@youtube = Youtube.where(channelTitle: "UCsU-I-vHLiaMfV_ceaYz5rQ", live: 'none').order(publishedAt: :desc).limit(400).to_json(:except => [:id])
    @channelTitle = "UCsU-I-vHLiaMfV_ceaYz5rQ"
    
    @pageNumber = params[:page].to_i
    @size = params[:size].to_i
    @currentTime = params[:time]
    
    if @pageNumber == 0
      @pageNumber = 1
    end
    
    if @size == 0
      @size = 20
    end
    
    if @currentTime.nil?
      @currentTime = Time.zone.now.strftime('%Y-%m-%d %H:%M:%S')
    else
      @currentTime = @currentTime.to_time.strftime('%Y-%m-%d %H:%M:%S')
    end
    
    if @pageNumber == 1
      @startNumber = 0
      # @data = HitProduct.order("date DESC").uniq.first(@size)
      @youtube = Youtube.where('created_at <= :currnet_time AND channelTitle = :channelTitle AND live = :live', :currnet_time => @currentTime, :channelTitle => @channelTitle, :live => 'none').order(publishedAt: :desc).uniq.first(@size)
    else
      @startNumber = @pageNumber * 10 + @pageNumber * (@size-10) - @size
      # @data = HitProduct.order("date DESC").uniq.drop(@startNumber).first(@size)
      @youtube = Youtube.where('created_at <= :currnet_time AND channelTitle = :channelTitle AND live = :live', :currnet_time => @currentTime, :channelTitle => @channelTitle, :live => 'none').order(publishedAt: :desc).uniq.drop(@startNumber).first(@size)
    end

    render :json => @youtube
  end
  
  def youtube_channelA
    #@youtube = Youtube.where(channelTitle: "UCfq4V1DAuaojnr2ryvWNysw", live: 'none').order(publishedAt: :desc).limit(400).to_json(:except => [:id])
    @channelTitle = "UCfq4V1DAuaojnr2ryvWNysw"
    
    @pageNumber = params[:page].to_i
    @size = params[:size].to_i
    @currentTime = params[:time]
    
    if @pageNumber == 0
      @pageNumber = 1
    end
    
    if @size == 0
      @size = 20
    end
    
    if @currentTime.nil?
      @currentTime = Time.zone.now.strftime('%Y-%m-%d %H:%M:%S')
    else
      @currentTime = @currentTime.to_time.strftime('%Y-%m-%d %H:%M:%S')
    end
    
    if @pageNumber == 1
      @startNumber = 0
      # @data = HitProduct.order("date DESC").uniq.first(@size)
      @youtube = Youtube.where('created_at <= :currnet_time AND channelTitle = :channelTitle AND live = :live', :currnet_time => @currentTime, :channelTitle => @channelTitle, :live => 'none').order(publishedAt: :desc).uniq.first(@size)
    else
      @startNumber = @pageNumber * 10 + @pageNumber * (@size-10) - @size
      # @data = HitProduct.order("date DESC").uniq.drop(@startNumber).first(@size)
      @youtube = Youtube.where('created_at <= :currnet_time AND channelTitle = :channelTitle AND live = :live', :currnet_time => @currentTime, :channelTitle => @channelTitle, :live => 'none').order(publishedAt: :desc).uniq.drop(@startNumber).first(@size)
    end

    render :json => @youtube
  end
  
  def youtube_mbn
    #@youtube = Youtube.where(channelTitle: "UCG9aFJTZ-lMCHAiO1KJsirg", live: 'none').order(publishedAt: :desc).limit(400).to_json(:except => [:id])
    @channelTitle = "UCG9aFJTZ-lMCHAiO1KJsirg"
    
    @pageNumber = params[:page].to_i
    @size = params[:size].to_i
    @currentTime = params[:time]
    
    if @pageNumber == 0
      @pageNumber = 1
    end
    
    if @size == 0
      @size = 20
    end
    
    if @currentTime.nil?
      @currentTime = Time.zone.now.strftime('%Y-%m-%d %H:%M:%S')
    else
      @currentTime = @currentTime.to_time.strftime('%Y-%m-%d %H:%M:%S')
    end
    
    if @pageNumber == 1
      @startNumber = 0
      # @data = HitProduct.order("date DESC").uniq.first(@size)
      @youtube = Youtube.where('created_at <= :currnet_time AND channelTitle = :channelTitle AND live = :live', :currnet_time => @currentTime, :channelTitle => @channelTitle, :live => 'none').order(publishedAt: :desc).uniq.first(@size)
    else
      @startNumber = @pageNumber * 10 + @pageNumber * (@size-10) - @size
      # @data = HitProduct.order("date DESC").uniq.drop(@startNumber).first(@size)
      @youtube = Youtube.where('created_at <= :currnet_time AND channelTitle = :channelTitle AND live = :live', :currnet_time => @currentTime, :channelTitle => @channelTitle, :live => 'none').order(publishedAt: :desc).uniq.drop(@startNumber).first(@size)
    end

    render :json => @youtube
  end
  
  def youtube_sbs
    #@youtube = Youtube.where(channelTitle: "UCkinYTS9IHqOEwR1Sze2JTw", live: 'none').order(publishedAt: :desc).limit(400).to_json(:except => [:id])
    @channelTitle = "UCkinYTS9IHqOEwR1Sze2JTw"
    
    @pageNumber = params[:page].to_i
    @size = params[:size].to_i
    @currentTime = params[:time]
    
    if @pageNumber == 0
      @pageNumber = 1
    end
    
    if @size == 0
      @size = 20
    end
    
    if @currentTime.nil?
      @currentTime = Time.zone.now.strftime('%Y-%m-%d %H:%M:%S')
    else
      @currentTime = @currentTime.to_time.strftime('%Y-%m-%d %H:%M:%S')
    end
    
    if @pageNumber == 1
      @startNumber = 0
      # @data = HitProduct.order("date DESC").uniq.first(@size)
      @youtube = Youtube.where('created_at <= :currnet_time AND channelTitle = :channelTitle AND live = :live', :currnet_time => @currentTime, :channelTitle => @channelTitle, :live => 'none').order(publishedAt: :desc).uniq.first(@size)
    else
      @startNumber = @pageNumber * 10 + @pageNumber * (@size-10) - @size
      # @data = HitProduct.order("date DESC").uniq.drop(@startNumber).first(@size)
      @youtube = Youtube.where('created_at <= :currnet_time AND channelTitle = :channelTitle AND live = :live', :currnet_time => @currentTime, :channelTitle => @channelTitle, :live => 'none').order(publishedAt: :desc).uniq.drop(@startNumber).first(@size)
    end

    render :json => @youtube
  end
  
  def youtube_kbs
    #@youtube = Youtube.where(channelTitle: "UCcQTRi69dsVYHN3exePtZ1A", live: 'none').order(publishedAt: :desc).limit(400).to_json(:except => [:id])
    @channelTitle = "UCcQTRi69dsVYHN3exePtZ1A"
    
    @pageNumber = params[:page].to_i
    @size = params[:size].to_i
    @currentTime = params[:time]
    
    if @pageNumber == 0
      @pageNumber = 1
    end
    
    if @size == 0
      @size = 20
    end
    
    if @currentTime.nil?
      @currentTime = Time.zone.now.strftime('%Y-%m-%d %H:%M:%S')
    else
      @currentTime = @currentTime.to_time.strftime('%Y-%m-%d %H:%M:%S')
    end
    
    if @pageNumber == 1
      @startNumber = 0
      # @data = HitProduct.order("date DESC").uniq.first(@size)
      @youtube = Youtube.where('created_at <= :currnet_time AND channelTitle = :channelTitle AND live = :live', :currnet_time => @currentTime, :channelTitle => @channelTitle, :live => 'none').order(publishedAt: :desc).uniq.first(@size)
    else
      @startNumber = @pageNumber * 10 + @pageNumber * (@size-10) - @size
      # @data = HitProduct.order("date DESC").uniq.drop(@startNumber).first(@size)
      @youtube = Youtube.where('created_at <= :currnet_time AND channelTitle = :channelTitle AND live = :live', :currnet_time => @currentTime, :channelTitle => @channelTitle, :live => 'none').order(publishedAt: :desc).uniq.drop(@startNumber).first(@size)
    end

    render :json => @youtube
  end
  
  def youtube_mbc
    #@youtube = Youtube.where(channelTitle: "UCF4Wxdo3inmxP-Y59wXDsFw", live: 'none').order(publishedAt: :desc).limit(400).to_json(:except => [:id])
    @channelTitle = "UCF4Wxdo3inmxP-Y59wXDsFw"
    
    @pageNumber = params[:page].to_i
    @size = params[:size].to_i
    @currentTime = params[:time]
    
    if @pageNumber == 0
      @pageNumber = 1
    end
    
    if @size == 0
      @size = 20
    end
    
    if @currentTime.nil?
      @currentTime = Time.zone.now.strftime('%Y-%m-%d %H:%M:%S')
    else
      @currentTime = @currentTime.to_time.strftime('%Y-%m-%d %H:%M:%S')
    end
    
    if @pageNumber == 1
      @startNumber = 0
      # @data = HitProduct.order("date DESC").uniq.first(@size)
      @youtube = Youtube.where('created_at <= :currnet_time AND channelTitle = :channelTitle AND live = :live', :currnet_time => @currentTime, :channelTitle => @channelTitle, :live => 'none').order(publishedAt: :desc).uniq.first(@size)
    else
      @startNumber = @pageNumber * 10 + @pageNumber * (@size-10) - @size
      # @data = HitProduct.order("date DESC").uniq.drop(@startNumber).first(@size)
      @youtube = Youtube.where('created_at <= :currnet_time AND channelTitle = :channelTitle AND live = :live', :currnet_time => @currentTime, :channelTitle => @channelTitle, :live => 'none').order(publishedAt: :desc).uniq.drop(@startNumber).first(@size)
    end

    render :json => @youtube
  end
  
  def youtube_tvChoseon
    #@youtube = Youtube.where(channelTitle: "UCWlV3Lz_55UaX4JsMj-z__Q", live: 'none').order(publishedAt: :desc).limit(400).to_json(:except => [:id])
    @channelTitle = "UCWlV3Lz_55UaX4JsMj-z__Q"
    
    @pageNumber = params[:page].to_i
    @size = params[:size].to_i
    @currentTime = params[:time]
    
    if @pageNumber == 0
      @pageNumber = 1
    end
    
    if @size == 0
      @size = 20
    end
    
    if @currentTime.nil?
      @currentTime = Time.zone.now.strftime('%Y-%m-%d %H:%M:%S')
    else
      @currentTime = @currentTime.to_time.strftime('%Y-%m-%d %H:%M:%S')
    end
    
    if @pageNumber == 1
      @startNumber = 0
      # @data = HitProduct.order("date DESC").uniq.first(@size)
      @youtube = Youtube.where('created_at <= :currnet_time AND channelTitle = :channelTitle AND live = :live', :currnet_time => @currentTime, :channelTitle => @channelTitle, :live => 'none').order(publishedAt: :desc).uniq.first(@size)
    else
      @startNumber = @pageNumber * 10 + @pageNumber * (@size-10) - @size
      # @data = HitProduct.order("date DESC").uniq.drop(@startNumber).first(@size)
      @youtube = Youtube.where('created_at <= :currnet_time AND channelTitle = :channelTitle AND live = :live', :currnet_time => @currentTime, :channelTitle => @channelTitle, :live => 'none').order(publishedAt: :desc).uniq.drop(@startNumber).first(@size)
    end

    render :json => @youtube
  end
  
  def youtube_video
    #@youtube = Youtube.where(channelTitle: "UCMEbRpvuwTbXxGiyDb1mT8w", live: 'none').order(publishedAt: :desc).limit(400).to_json(:except => [:id])
    @channelTitle = "UCMEbRpvuwTbXxGiyDb1mT8w"
    
    @pageNumber = params[:page].to_i
    @size = params[:size].to_i
    @currentTime = params[:time]
    
    if @pageNumber == 0
      @pageNumber = 1
    end
    
    if @size == 0
      @size = 20
    end
    
    if @currentTime.nil?
      @currentTime = Time.zone.now.strftime('%Y-%m-%d %H:%M:%S')
    else
      @currentTime = @currentTime.to_time.strftime('%Y-%m-%d %H:%M:%S')
    end
    
    if @pageNumber == 1
      @startNumber = 0
      # @data = HitProduct.order("date DESC").uniq.first(@size)
      @youtube = Youtube.where('created_at <= :currnet_time AND channelTitle = :channelTitle AND live = :live', :currnet_time => @currentTime, :channelTitle => @channelTitle, :live => 'none').order(publishedAt: :desc).uniq.first(@size)
    else
      @startNumber = @pageNumber * 10 + @pageNumber * (@size-10) - @size
      # @data = HitProduct.order("date DESC").uniq.drop(@startNumber).first(@size)
      @youtube = Youtube.where('created_at <= :currnet_time AND channelTitle = :channelTitle AND live = :live', :currnet_time => @currentTime, :channelTitle => @channelTitle, :live => 'none').order(publishedAt: :desc).uniq.drop(@startNumber).first(@size)
    end

    render :json => @youtube
  end
  
  def youtube_sebese
    #@youtube = Youtube.where(channelTitle: "UCQabORQKQRHP-iUqe-xIFvg", live: 'none').order(publishedAt: :desc).limit(400).to_json(:except => [:id])
    @channelTitle = "UCQabORQKQRHP-iUqe-xIFvg"
    
    @pageNumber = params[:page].to_i
    @size = params[:size].to_i
    @currentTime = params[:time]
    
    if @pageNumber == 0
      @pageNumber = 1
    end
    
    if @size == 0
      @size = 20
    end
    
    if @currentTime.nil?
      @currentTime = Time.zone.now.strftime('%Y-%m-%d %H:%M:%S')
    else
      @currentTime = @currentTime.to_time.strftime('%Y-%m-%d %H:%M:%S')
    end
    
    if @pageNumber == 1
      @startNumber = 0
      # @data = HitProduct.order("date DESC").uniq.first(@size)
      @youtube = Youtube.where('created_at <= :currnet_time AND channelTitle = :channelTitle AND live = :live', :currnet_time => @currentTime, :channelTitle => @channelTitle, :live => 'none').order(publishedAt: :desc).uniq.first(@size)
    else
      @startNumber = @pageNumber * 10 + @pageNumber * (@size-10) - @size
      # @data = HitProduct.order("date DESC").uniq.drop(@startNumber).first(@size)
      @youtube = Youtube.where('created_at <= :currnet_time AND channelTitle = :channelTitle AND live = :live', :currnet_time => @currentTime, :channelTitle => @channelTitle, :live => 'none').order(publishedAt: :desc).uniq.drop(@startNumber).first(@size)
    end

    render :json => @youtube
  end
  
  def youtube_mbig
    #@youtube = Youtube.where(channelTitle: "UCYRrUD5v5j_Ei8sKOo7mhoQ", live: 'none').order(publishedAt: :desc).limit(400).to_json(:except => [:id])
    @channelTitle = "UCYRrUD5v5j_Ei8sKOo7mhoQ"
    
    @pageNumber = params[:page].to_i
    @size = params[:size].to_i
    @currentTime = params[:time]
    
    if @pageNumber == 0
      @pageNumber = 1
    end
    
    if @size == 0
      @size = 20
    end
    
    if @currentTime.nil?
      @currentTime = Time.zone.now.strftime('%Y-%m-%d %H:%M:%S')
    else
      @currentTime = @currentTime.to_time.strftime('%Y-%m-%d %H:%M:%S')
    end
    
    if @pageNumber == 1
      @startNumber = 0
      # @data = HitProduct.order("date DESC").uniq.first(@size)
      @youtube = Youtube.where('created_at <= :currnet_time AND channelTitle = :channelTitle AND live = :live', :currnet_time => @currentTime, :channelTitle => @channelTitle, :live => 'none').order(publishedAt: :desc).uniq.first(@size)
    else
      @startNumber = @pageNumber * 10 + @pageNumber * (@size-10) - @size
      # @data = HitProduct.order("date DESC").uniq.drop(@startNumber).first(@size)
      @youtube = Youtube.where('created_at <= :currnet_time AND channelTitle = :channelTitle AND live = :live', :currnet_time => @currentTime, :channelTitle => @channelTitle, :live => 'none').order(publishedAt: :desc).uniq.drop(@startNumber).first(@size)
    end

    render :json => @youtube
  end
  
  def youtube_live
    @youtube = Youtube.where(live: "live").order(publishedAt: :desc).to_json(:except => [:id])

    render :json => @youtube
  end
  
  def youtube_search
    @youtube = Youtube.where(live: "none").order(publishedAt: :desc).limit(500).to_json(:except => [:id])
    #
    render :json => @youtube
  end
end

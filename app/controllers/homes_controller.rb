class HomesController < ApplicationController
  def index
  end
  
  ## Youtube API 통신 및 데이터를 가져와서 내 DB에 저장
  def youtube_api_connect
    query = { "part" => "snippet", "channelId" => "UCwx6n_4OcLgzAGdty0RWCoA", "key" => ENV['YOUTUBE_API_KEY'], "maxResults" => "30"}
    @youtubeConnect = HTTParty.get("https://www.googleapis.com/youtube/v3/search", :query => query)
    @youtubeDataJson = @youtubeConnect.to_json
    @jsonParse = JSON.parse(@youtubeDataJson)
    
    for i in 0..@jsonParse["items"].length-1
      parse_title = @jsonParse["items"]["#{i}".to_i]["snippet"]["title"]
      parse_url = @jsonParse["items"]["#{i}".to_i]["id"]["videoId"]
      parse_banner = @jsonParse["items"]["#{i}".to_i]["snippet"]["thumbnails"]["high"]["url"]
      
      Youtube.create(title: parse_title, url: "https://youtu.be/" + parse_url, banner: parse_banner)
    end
    
    render :json => { :result => "API 통신 및 데이터 저장 종료" }
  end
  
  ## 내 DB에 저장된 데이터를 Json으로 출력
  def youtube_result
    @youtube = Youtube.all.to_json(:except => [:id, :created_at, :updated_at])

    render :json => @youtube
  end
end
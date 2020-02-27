class HomesController < ApplicationController
  require 'open-uri'
  
  def index
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
      @youtube = Youtube.channel_list_all_without_drop(@currentTime, @size)
    else
      @startNumber = @pageNumber * 10 + @pageNumber * (@size-10) - @size
      @youtube = Youtube.channel_list_all(@currentTime, @startNumber, @size)
    end

    render :json => @youtube
  end
end

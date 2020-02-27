class Youtube < ApplicationRecord
    validates_uniqueness_of :title
    
    def self.channel_list_without_drop(channel_title, current_time, size)
        result = Youtube.where(channelTitle: channel_title).where("created_at <= :currnetTime AND live = :live", :currnetTime => current_time, :live => 'none').order(publishedAt: :desc).uniq.first(size)
        return result
    end
    
    def self.channel_list(channel_title, current_time, startNumber, size)
        result = Youtube.where(channelTitle: channel_title).where("created_at <= :currnetTime AND live = :live", :currnetTime => current_time, :live => 'none').order(publishedAt: :desc).uniq.drop(startNumber).first(size)
        return result
    end
end
class HomeController < ApplicationController
 before_action :youtube_videos

  def index
  	@home_page = true
  end

  def youtube_videos
    channel = Yt::Channel.new id:'UCUGfSI6zAJYAUsEcHk11DVA'
    @youtube_videos = channel.videos.where(order: 'date')
    @videos = []
    index = 0
    @youtube_videos.each do |v|
      break if index > 2
      @videos << v
      index += 2
    end
end
end

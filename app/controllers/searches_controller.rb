require 'time'

class SearchesController < ApplicationController


  def index
     @message = "What up!"
  end

  def show
    instance = SimpleTwitter::Search.new
    @results = instance.search(params[:q])
    
#####    @rpp = instance.results_per_page
    
#    instance.results_per_page = params[:results_per_page]
    
#    @img_urls = []
#    @screen_names = []
#    @real_names = []
#    @times_ago = []
#    @statuses = []
#    @page_ids = []
#    @user_ids = []
    
#   results['results'].each do |r|
      
#      img_url = r['profile_image_url']
#        @img_urls << img_url
      
#      screen_name = r['from_user']
#        @screen_names << screen_name
#      
#      real_name = r['from_user_name']
#        @real_names << real_name
#      
#      page_id = r['id']
#        @page_ids << page_id
#      
#      status = r['text']
#        @statuses << status
#      
#      time_string = r['created_at']
#        parsed = DateTime.parse(time_string).to_time
#        seconds_ago = Time.now - parsed
#        whole_num = seconds_ago.to_i
#        if whole_num < 0
#              time_ago = "Just now.."
#            elsif whole_num > 60
#              time_ago = whole_num/60
#              time_ago = "#{time_ago} minutes ago.."
#            elsif whole_num > 3600
#              time_ago = "#{whole_num/3600} hours ago.."
#            else
#              time_ago = "#{whole_num} seconds ago.."
#        end
#        @times_ago << time_ago    
# 
#    end
  end
end


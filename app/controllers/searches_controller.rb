class SearchesController < ApplicationController
  
  def index
     @message = "What up!"
  end
  
  def show
    instance = SimpleTwitter::Search.new
    @results = instance.search(params[:q])
  
  end
  
end

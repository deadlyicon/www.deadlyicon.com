class AwesomeController < ApplicationController
  
  DEFAULT_TAG = 'video'
  
  
  
  def index
  
     @tag = Awesome::Tag.new( params[:tag] || DEFAULT_TAG )
    @feed = @tag.feed
        
  end
      
end

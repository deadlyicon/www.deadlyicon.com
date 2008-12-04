module Awesome
  class Tag < String
    
    #   tag = !@tag.blank? ? "+#{@tag.singularize}" : ''
    # @feed = "http://feeds.delicious.com/v2/rss/deadlyicon/awesome#{tag}?count=15"
    
    TAGS = {
      'video' => 'http://feeds.feedburner.com/deadlyicon/bookmarks/awesome?format=xml'
    }.freeze
    
    def initialize(tag)
      replace tag
    end
    
    def feed
      
    end
    
  end

end
ActionController::Routing::Routes.draw do |map|

  # feeds.deadlyicon.com
  # map.with_options :conditions => { :subdomain => 'feeds' } do |feeds|
  #   feeds.resources  :feeds,      :controller => 'feeds'
  #   feeds.connect    '/:action/', :controller => 'feeds'
  #   feeds.feeds_root '',          :controller => 'feeds',   :action => 'index'
  # end
  
  # www.deadlyicon.com
  # deadlyicon.com
  map.resume 'resume', :controller => "resume", :action => "index"
  map.formatted_resume 'resume.:format', :controller => "resume", :action => "index"
  
  # www.deadlyicon.com/awesome
  # www.deadlyicon.com/awesome/plus/other/tags.xml
  map.awesome           '/awesome/:tag',         :controller => "awesome"
  map.formatted_awesome '/awesome/:tag.:format', :controller => "awesome"

  map.foaf           '/foaf',         :controller => "index", :action => "foaf", :format => :rdf
  map.formatted_foaf '/foaf.:format', :controller => "index", :action => "foaf"
  
  map.root :controller => "index", :action => "index"
  # map.connect ':controller/:action/:id'
  # map.connect ':controller/:action/:id.:format'
  map.connect ':controller/:action'
  map.connect ':controller/:action.:format'
end

ActionController::Routing::Routes.draw do |map|

  # feeds.deadlyicon.com
  map.with_options :conditions => { :subdomain => 'feeds' } do |feeds|
    feeds.resources  :feeds,      :controller => 'feeds'
    feeds.connect    '/:action/', :controller => 'feeds'
    feeds.feeds_root '',          :controller => 'feeds',   :action => 'index'
  end
  
  # www.deadlyicon.com
  # deadlyicon.com
  map.resume 'resume', :controller => "resume", :action => "index"
  map.formatted_resume 'resume.:format', :controller => "resume", :action => "index"
  map.root :controller => "index", :action => "index"
  # map.connect ':controller/:action/:id'
  # map.connect ':controller/:action/:id.:format'
end

ActionController::Routing::Routes.draw do |map|
  map.resume 'resume', :controller => "resume", :action => "index"
  map.formatted_resume 'resume.:format', :controller => "resume", :action => "index"
  map.root :controller => "index", :action => "index"
  # map.connect ':controller/:action/:id'
  # map.connect ':controller/:action/:id.:format'
end

ActionController::Routing::Routes.draw do |map|
  map.root :controller => "index", :action => "index"
  # map.connect ':controller/:action/:id'
  # map.connect ':controller/:action/:id.:format'
end

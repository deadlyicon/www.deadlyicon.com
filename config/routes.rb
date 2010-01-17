ActionController::Routing::Routes.draw do |map|

  # www.deadlyicon.com
  # deadlyicon.com
  map.resume 'resume', :controller => "resume", :action => "index"
  map.formatted_resume 'resume.:format', :controller => "resume", :action => "index"
  
  map.foaf           '/foaf',         :controller => "index", :action => "foaf", :format => :rdf
  map.formatted_foaf '/foaf.:format', :controller => "index", :action => "foaf"
  
  map.root :controller => "index", :action => "index"
  # map.connect ':controller/:action/:id'
  # map.connect ':controller/:action/:id.:format'
  map.connect ':controller/:action'
  map.connect ':controller/:action.:format'
end

if Rails::VERSION::MAJOR >= 3
  match 'projects/:project_id/opensearch/:action', to: 'opensearch#index'
  match 'opensearch', to: 'opensearch#index'
else
  ActionController::Routing::Routes.draw do |map| 
    map.connect 'projects/:project_id/opensearch/:action', :controller => 'opensearch'
  end
  map.connect 'opensearch', :controller => 'opensearch', :action => 'index'
end

Rails.application.routes.draw do
	get '/' => 'site#home'
	resources :projects do
		resources :entries
	end
#             Prefix Verb   URI Pattern                                      Controller#Action
#                    GET    /                                                site#home
#    project_entries GET    /projects/:project_id/entries(.:format)          entries#index
#                    POST   /projects/:project_id/entries(.:format)          entries#create
#  new_project_entry GET    /projects/:project_id/entries/new(.:format)      entries#new
# edit_project_entry GET    /projects/:project_id/entries/:id/edit(.:format) entries#edit
#      project_entry GET    /projects/:project_id/entries/:id(.:format)      entries#show
#                    PATCH  /projects/:project_id/entries/:id(.:format)      entries#update
#                    PUT    /projects/:project_id/entries/:id(.:format)      entries#update
#                    DELETE /projects/:project_id/entries/:id(.:format)      entries#destroy
#           projects GET    /projects(.:format)                              projects#index
#                    POST   /projects(.:format)                              projects#create
#        new_project GET    /projects/new(.:format)                          projects#new
#       edit_project GET    /projects/:id/edit(.:format)                     projects#edit
#            project GET    /projects/:id(.:format)                          projects#show
#                    PATCH  /projects/:id(.:format)                          projects#update
#                    PUT    /projects/:id(.:format)                          projects#update
#                    DELETE /projects/:id(.:format)                          projects#destroy
end

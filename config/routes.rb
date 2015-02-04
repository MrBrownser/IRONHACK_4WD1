Rails.application.routes.draw do
	get '/' => 'site#home'
	resources :projects do
		resources :entries
	end
	# get '/contact' => 'site#contact'
	# get '/projects' => 'projects#index'
	# get '/projects/:id' => 'projects#show'
	# get '/projects/:project_id/entries' => 'entries#index', as: 'project_entries'
	# get '/projects/:project_id/entries/new' => 'entries#new'
	# get '/projects/:project_id/entries/:id' => 'entries#show'

	# post '/projects/:project_id/entries' => 'entries#create'
end

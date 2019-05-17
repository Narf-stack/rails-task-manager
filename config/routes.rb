Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # SHOW
  # all tasks
  get 'tasks', to: 'tasks#index', as: :tasks

  # one task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # CREATION
  get 'new', to: 'tasks#new', as: :task_new
  post 'tasks', to: 'tasks#create'

  # UPDATE
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'

  # DESTROY
  delete 'tasks/:id', to: 'tasks#destroy', as: :destroy
end

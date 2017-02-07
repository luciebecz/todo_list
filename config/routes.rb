Rails.application.routes.draw do
  root 'todo_lists#index'

  get 'todo_lists/show', to: 'todo_lists#show'

  get 'todo_lists/edit', to: 'todo_lists#edit'

  get 'todo_lists/new', to: 'todo_lists#new'



  post 'todo_lists', to: 'todo_lists#create', as: 'todo_lists'

  delete 'todo_lists', to: 'todo_lists#destroy'

end

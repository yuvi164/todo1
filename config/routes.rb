=begin
Rails.application.routes.draw do
  resources :todo_lists
  root "todo_lists#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
=end

#CHANGE ROUHTS # TO
=begin
Rails.application.routes.draw do
resources :todo_lists do
   resources :todo_items
  end
root "todo_lists#index"
end
=end

#after adding new colmn in data base name add_completed_at_to_todo_items update route file to

Rails.application.routes.draw do
resources :todo_lists do
   resources :todo_items do
    member do
     patch :complete
    end
  end
end
root "todo_lists#index"
end

Rails.application.routes.draw do
  get 'customers/index'
  get 'customers/alphabetized'
  get 'customers/missing_email'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

end
# Rails.application.routes.draw do
#   resources :customers do
#     collection do
#       get 'alphabetized'
#       get 'missing_email'
#     end
#   end

#   root 'customers#index'
# end
# Rails.application.routes.draw do
#   devise_for :admin_users, ActiveAdmin::Devise.config
#   ActiveAdmin.routes(self)

#   resources :customers do
#     collection do
#       get 'alphabetized'
#       get 'missing_email'
#     end
#   end

#   root 'customers#index'
# end

# Rails.application.routes.draw do
#   devise_for :admin_users, ActiveAdmin::Devise.config
#   ActiveAdmin.routes(self)

#   namespace :api do
#     resources :customers do
#       collection do
#         get 'alphabetized'
#         get 'missing_email'
#       end
#     end
#   end

#   root 'customers#index'
# end


Rails.application.routes.draw do
  resources :customers do
    collection do
      get 'alphabetized'
      get 'missing_email'
    end
  end

  root 'customers#index'
end
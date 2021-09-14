Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :posts
      resources :users
      resource :session, only: [:create, :destroy]
    end
  end
end

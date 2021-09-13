Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resource :posts
    end
  end
end

Rails.application.routes.draw do
  
    resources :administrations do
        collection do
            get "/seed", to: "administrations#seed"
        end
    end
  
end

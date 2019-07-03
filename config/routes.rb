Rails.application.routes.draw do

  resources :topics, only: [:show,:index]
  devise_for :users, path: '', path_names: {sign_in: 'login', sig_out: 'logout', sign_up: 'register'}
  resources :portfolios, except: [:show]

  get "angular-items", to: "portfolios#angular"
  get "portfolio/:id", to: "portfolios#show", as: "portfolio_show"

  #ข้างหน้าคือชื่อ path(เปลี่ยนเป็นอะไรก็ได้) ข้างหลังคือบอกให้ลิ้งค์ไป
  get "about-me",to:'pages#about'
  get "contact",to:'pages#contact'

  resources :blogs do 
    member do 
      get :toggle_status      
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount ActionCable.server => '/cable'
  
  #url เปล่าให้เป็นหน้า home
  root to:'pages#home'

end

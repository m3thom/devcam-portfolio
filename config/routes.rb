Rails.application.routes.draw do
  resources :portfolios
  #ข้างหน้าคือชื่อ path(เปลี่ยนเป็นอะไรก็ได้) ข้างหลังคือบอกให้ลิ้งค์ไป
  get "about-me",to:'pages#about'
  get "contact",to:'pages#contact'
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #url เปล่าให้เป็นหน้า home
  root to:'pages#home'

end

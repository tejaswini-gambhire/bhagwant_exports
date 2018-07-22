Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/about-us' => 'static#about_us'
  get '/portfolio' => 'static#portfolio'
  get '/team' => 'static#team'
  get '/thankyou' => 'static#thankyou', as: 'thankyou'
  get '/contact-us' => 'contacts#new', as: 'new_contact'
  post '/contact-us' => 'contacts#create', as: 'contact_us'
  
  get '/contact_us', to: redirect('/contact-us')

  root to: 'static#home'
end
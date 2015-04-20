Rails.application.routes.draw do

  get("/homepage", {:controller => "forms", :action => "homepage"})
  get("/profile_view", {:controller => "forms", :action => "profile_view"})
  get("/profile_edit", {:controller => "forms", :action => "profile_edit_form"})
  get("/profile_edited", {:controller => "forms", :action => "profile_edit_process"})

  get("/pers_info", {:controller => "forms", :action => "pers_info_form"})
  get("/pers_info_process", {:controller => "forms", :action => "pers_info_process"})

  get("/profile_pic", {:controller => "forms", :action => "profile_pic_form"})
  get("/profile_pic_process", {:controller => "forms", :action => "profile_pic_process"})

  get("/special_dates", {:controller => "forms", :action => "special_dates_form"})
  get("/special_dates_process", {:controller => "forms", :action => "special_dates_process"})

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
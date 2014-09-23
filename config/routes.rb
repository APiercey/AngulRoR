Rails.application.routes.draw do
  root :to => "home#start"

  # Wild card route for template partials
  # EXAMPLE:
  # /template/channel/main RETURNS PARTIAL AT views/angular/channel/main
  scope '/template' do
    get '/*partial', to: 'home#template'
  end


  # NOTE: This passes all unknown routes to angular. This does not include /template or /api
  # keep this towards the bottom as it works like a filter and will catch anything that matches 
  # to it, which will be anything that isn't caught due to it being a wild card for everything.
  #
  # The beauty about this is, any routes that are not known to Rails will be passed on to angular
  # to deal with. That means we can implement bookmarks, saved states, etc, much smoother.
  # [abp]
  #
  # REPLY: That is really awesome. "Pick up where you left off last" haha. Love it. 
  # We should somehow save these code comment conversations by means of screen cap 
  # so we can have these quick discussions and simultaneously keep the backend files 
  # clean. Use the new comment standard called FIXTURE: to leave a comment that you feel
  # deserves to be a permanent fixture in the file. I think your comment above may be one.
  # Although it is sort of long, so perhaps we can fine tune fixtures over time to optimize 
  # the effectiveness of what it's communicating. [mam]
  #

  get '*page' => "home#start"

  #
  # FIXTURE: THE FOLLOWING IS EXAMPLES PROVIDED BY RAILS APP GENERATION, KEEP AT BOTTOM [mam]
  # REPLY: I like these notes. I was about to delete them then saw your note, haha [abp]

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

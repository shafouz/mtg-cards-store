# == Route Map
#
#                                Prefix Verb   URI Pattern                                                                              Controller#Action
#                           rails_admin        /admin                                                                                   RailsAdmin::Engine
#                          stripe_event        /stripe/webhooks                                                                         StripeEvent::Engine
#                      new_user_session GET    /users/sign_in(.:format)                                                                 devise/sessions#new
#                          user_session POST   /users/sign_in(.:format)                                                                 devise/sessions#create
#                  destroy_user_session DELETE /users/sign_out(.:format)                                                                devise/sessions#destroy
#                     new_user_password GET    /users/password/new(.:format)                                                            devise/passwords#new
#                    edit_user_password GET    /users/password/edit(.:format)                                                           devise/passwords#edit
#                         user_password PATCH  /users/password(.:format)                                                                devise/passwords#update
#                                       PUT    /users/password(.:format)                                                                devise/passwords#update
#                                       POST   /users/password(.:format)                                                                devise/passwords#create
#              cancel_user_registration GET    /users/cancel(.:format)                                                                  devise/registrations#cancel
#                 new_user_registration GET    /users/sign_up(.:format)                                                                 devise/registrations#new
#                edit_user_registration GET    /users/edit(.:format)                                                                    devise/registrations#edit
#                     user_registration PATCH  /users(.:format)                                                                         devise/registrations#update
#                                       PUT    /users(.:format)                                                                         devise/registrations#update
#                                       DELETE /users(.:format)                                                                         devise/registrations#destroy
#                                       POST   /users(.:format)                                                                         devise/registrations#create
#                                  root GET    /                                                                                        products#index
#           products_pagy_remote_nav_js GET    /products/pagy_remote_nav_js(.:format)                                                   products#pagy_remote_nav_js
#                              products GET    /products(.:format)                                                                      products#index
#                                       POST   /products(.:format)                                                                      products#create
#                           new_product GET    /products/new(.:format)                                                                  products#new
#                          edit_product GET    /products/:id/edit(.:format)                                                             products#edit
#                               product GET    /products/:id(.:format)                                                                  products#show
#                                       PATCH  /products/:id(.:format)                                                                  products#update
#                                       PUT    /products/:id(.:format)                                                                  products#update
#                                       DELETE /products/:id(.:format)                                                                  products#destroy
#                              checkout GET    /orders/checkout(.:format)                                                               orders#checkout
#                      checkout_success GET    /orders/success(.:format)                                                                orders#success
#                                 carts GET    /carts(.:format)                                                                         carts#index
#                                       POST   /carts(.:format)                                                                         carts#create
#                              new_cart GET    /carts/new(.:format)                                                                     carts#new
#                             edit_cart GET    /carts/:id/edit(.:format)                                                                carts#edit
#                                  cart GET    /carts/:id(.:format)                                                                     carts#show
#                                       PATCH  /carts/:id(.:format)                                                                     carts#update
#                                       PUT    /carts/:id(.:format)                                                                     carts#update
#                                       DELETE /carts/:id(.:format)                                                                     carts#destroy
#         rails_postmark_inbound_emails POST   /rails/action_mailbox/postmark/inbound_emails(.:format)                                  action_mailbox/ingresses/postmark/inbound_emails#create
#            rails_relay_inbound_emails POST   /rails/action_mailbox/relay/inbound_emails(.:format)                                     action_mailbox/ingresses/relay/inbound_emails#create
#         rails_sendgrid_inbound_emails POST   /rails/action_mailbox/sendgrid/inbound_emails(.:format)                                  action_mailbox/ingresses/sendgrid/inbound_emails#create
#   rails_mandrill_inbound_health_check GET    /rails/action_mailbox/mandrill/inbound_emails(.:format)                                  action_mailbox/ingresses/mandrill/inbound_emails#health_check
#         rails_mandrill_inbound_emails POST   /rails/action_mailbox/mandrill/inbound_emails(.:format)                                  action_mailbox/ingresses/mandrill/inbound_emails#create
#          rails_mailgun_inbound_emails POST   /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)                              action_mailbox/ingresses/mailgun/inbound_emails#create
#        rails_conductor_inbound_emails GET    /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#index
#                                       POST   /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#create
#     new_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/new(.:format)                             rails/conductor/action_mailbox/inbound_emails#new
#    edit_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id/edit(.:format)                        rails/conductor/action_mailbox/inbound_emails#edit
#         rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#show
#                                       PATCH  /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
#                                       PUT    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
#                                       DELETE /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#destroy
# rails_conductor_inbound_email_reroute POST   /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)                      rails/conductor/action_mailbox/reroutes#create
#                    rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
#             rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#                    rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
#             update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#                  rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create
#
# Routes for RailsAdmin::Engine:
#   dashboard GET         /                                      rails_admin/main#dashboard
#       index GET|POST    /:model_name(.:format)                 rails_admin/main#index
#         new GET|POST    /:model_name/new(.:format)             rails_admin/main#new
#      export GET|POST    /:model_name/export(.:format)          rails_admin/main#export
# bulk_delete POST|DELETE /:model_name/bulk_delete(.:format)     rails_admin/main#bulk_delete
# bulk_action POST        /:model_name/bulk_action(.:format)     rails_admin/main#bulk_action
#        show GET         /:model_name/:id(.:format)             rails_admin/main#show
#        edit GET|PUT     /:model_name/:id/edit(.:format)        rails_admin/main#edit
#      delete GET|DELETE  /:model_name/:id/delete(.:format)      rails_admin/main#delete
# show_in_app GET         /:model_name/:id/show_in_app(.:format) rails_admin/main#show_in_app
#
# Routes for StripeEvent::Engine:
#   root POST /           stripe_event/webhook#event

Rails.application.routes.draw do
  # Gems
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount StripeEvent::Engine, at: '/stripe/webhooks'
  devise_for :users

  # Products
  root "products#index"
  get "products/pagy_remote_nav_js"
  resources :products

  # Orders / Stripe
  get "orders/checkout", to: "orders#checkout", as: "checkout"
  get "orders/success", to: "orders#success", as: "checkout_success"
  get "orders/failed", to: "orders#success", id: false

  # Carts
  resources :carts
end

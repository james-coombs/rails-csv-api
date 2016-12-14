# README

Import CSV Files and download the data in JSON format.

  -Ruby version: 2.3.1

  -Rails version: 5.0

Helper              | HTTP Verb | Path                           | Controller#Action
------------------- | --------- | ------------------------------ | -----------------
sign_up_path        | POST      | /sign-up(.:format)             | users#signup
sign_in_path        | POST      | /sign-in(.:format)             | users#signin
                    | DELETE    | /sign-out/:id(.:format)        | users#signout
                    | PATCH     | /change-password/:id(.:format) | users#changepw
users_path          | GET       | /users(.:format)               | users#index
user_path           | GET       | /users/:id(.:format)           | users#show
import_samples_path | POST      | /samples/import(.:format)      | samples#import
json_samples_path   | GET       | /samples/json(.:format)        | samples#json
samples_path        | GET       | /samples(.:format)             | samples#index
                    | POST      | /samples(.:format)             | samples#create
new_sample_path     | GET       | /samples/new(.:format)         | samples#new
edit_sample_path    | GET       | /samples/:id/edit(.:format)    | samples#edit
sample_path         | GET       | /samples/:id(.:format)         | samples#show
                    | PATCH     | /samples/:id(.:format)         | samples#update
                    | PUT       | /samples/:id(.:format)         | samples#update
                    | DELETE    | /samples/:id(.:format)         | samples#destroy
root_path           | GET       | /                              | samples#index

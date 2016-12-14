# README

Import CSV Files and view and/or download the data in JSON format.

Helper              | HTTP Verb | Path                           | Controller#Action
------------------- | --------- | ------------------------------ | -----------------
import_samples_path | POST      | /samples/import(.:format)      | samples#import
json_samples_path   | GET       | /samples/json(.:format)        | samples#json
samples_path        | GET       | /samples(.:format)             | samples#index
new_sample_path     | GET       | /samples/new(.:format)         | samples#new
edit_sample_path    | GET       | /samples/:id/edit(.:format)    | samples#edit
sample_path         | GET       | /samples/:id(.:format)         | samples#show
root_path           | GET       | /                              | samples#index

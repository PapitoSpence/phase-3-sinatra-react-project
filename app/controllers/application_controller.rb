class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    pet = Pet.all
    pet.to_json
  end
  get "/users" do
      users = User.all
      users.to_json
    end

end

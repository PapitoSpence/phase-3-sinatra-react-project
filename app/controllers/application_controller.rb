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

        post '/login' do 
                user = User.find_by(
                  email: params[:email],
                  password: params[:password]
                )
                user.to_json
        end

        post "/new_pet" do
              pet = Pet.create(
                name: params[:name], description: params[:description], breeds: params[:breeds],
                photos: params[:photos], status: params[:status], contact: params[:contact]
              )
        end   
      
        get "/pets/:status" do
            pets = Pet.find_by(params[:status]) 
            pets.to_json
            
          end  

          get "/pets/:breeds" do
            pets = Pet.find_by(params[:breeds]) 
            pets.to_json
          
          end
          
           get "/pets/:name" do
            pets = Pet.find_by(params[:name]) 
            pets.to_json
          
          end

          patch "/pets/:id" do
            pet = Pet.find_params(params[:id]0)
            pets.update(
                name: params[:name], description: params[:description], breeds: params[:breeds],
            photos: params[:photos], status: params[:status], contact: params[:contact]
            https://www.google.com/search?q=TMH001_TMH_Logo_CMYK.png&oq=TMH001_TMH_Logo_CMYK.png&aqs=chrome..69i57.514j0j9&sourceid=chrome&ie=UTF-8
            )
            pets.to_json
          end

          delete "/pets/:id" do
            pets = Pet.find(params[:id])
            pets.destroy
            pets.to_json
            
          end
end

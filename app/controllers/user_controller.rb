class UserController < ApplicationController

  get '/' do
    redirect "/users"
  end
  
  get "/users/new" do
    erb :"users/new"
  end

  post "/users" do
    user = User.create(params)
    redirect "/users/#{user.id}"
  end

  get '/users' do
    @all_users = User.all
    erb :index
  end

  get '/users/:id' do
    @user = User.find(params[:id])
    erb :show_users
  end

end

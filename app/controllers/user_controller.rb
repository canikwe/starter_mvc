class UsersController < ApplicationController

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
    erb :"users/show"
  end

  get "/users/:id/edit" do
    @user = User.find(params[:id])
    erb :"users/edit"
  end
  
  patch "/users/:id" do
    # binding.pry
    user = User.find(params[:id])
    user.update(name: params[:name],
                description: params[:description])
    redirect :"users/#{user.id}"
  end

  delete "/users/:id" do
    user = User.find(params[:id])
    user.delete
    redirect :"/users"
  end

end

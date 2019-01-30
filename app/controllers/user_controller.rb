class UsersController < ApplicationController


  get '/' do
    redirect "/users"
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

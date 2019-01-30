class UsersController < ApplicationController
<<<<<<< HEAD

=======
>>>>>>> f85d30de6ce80dece56d633b9638c74e957181c5

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

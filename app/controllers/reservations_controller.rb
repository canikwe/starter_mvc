class ReservationsController < ApplicationController

  get '/reservations' do
    @all_hosts = Host.all
    erb :"reservations/index"
  end

  get "/reservations/new" do
    @users = User.all
    @hosts = Host.all
    erb :"reservations/new"
  end

  post "/reservations" do
    user = User.find(params[:user_id])
    host = Host.find(params[:host][:id])
    rez = Reservation.create(length_of_stay: params[:host][:length_of_stay],
    host: host, user: user)
    rez.cost = rez.final_cost
    rez.save
    redirect "/reservations/#{rez.id}"
  end
  
  get '/reservations/:id' do
    @reservation = Reservation.find(params[:id])
    erb :"reservations/show"
  end

  delete '/reservations/:id' do
    rez = Reservation.find(params[:id])
    rez.delete
    redirect "/reservations/new"
  end

end

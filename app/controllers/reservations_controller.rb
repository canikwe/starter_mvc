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

  

  get '/reservations/:id' do
    @reservation = Reservation.find(params[:id])
    erb :"reservations/show"
  end


end

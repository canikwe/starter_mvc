class HostsController < ApplicationController

  get "/hosts/new" do
    erb :"hosts/new"
  end

  post "/hosts" do
    host = Host.create(params)
    redirect "/hosts/#{host.id}"
  end

  get '/hosts' do
    @all_hosts = Host.all
    erb :"hosts/index"
  end

  get '/hosts/:id' do
    @host = Host.find(params[:id])
    erb :"hosts/show"
  end


end

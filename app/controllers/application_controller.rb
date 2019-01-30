class ApplicationController < Sinatra::Base

  set :views, 'app/views'
  set :method_overide, true

  get '/' do
  end

end

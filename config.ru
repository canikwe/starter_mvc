require_relative './config/environment'

# use Rack::MethodOverride
use HostsController
use UsersController
use ReservationsController
run ApplicationController

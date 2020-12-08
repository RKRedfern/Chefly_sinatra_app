require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

#This is where I will mount other controllers with my keyword, 'use'

use UsersController
use PostsController

#^^ Every controller inheriting from AppController needs this route! 

#Also in order to send PATCH and DELETE reqs I'll include - 
#use Rack::MethodOverride (middleware!)

run ApplicationController

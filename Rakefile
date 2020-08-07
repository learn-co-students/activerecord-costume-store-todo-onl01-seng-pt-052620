require_relative 'config/environment.rb'
require "sinatra/activerecord/rake"

namespace :db do

  desc "Migrate the db"
  task :migrate do
    connection_details = YAML::load(File.open('config/database.yml'))
    ActiveRecord::Base.establish_connection(connection_details)
    ActiveRecord::Migration.migrate("db/migrate/")  
    #Checks all the files versus the DB schema version and 
    #if it starts with a number that's greater than that it will run the code against the database. 
  end

  desc "drop and recreate the db"
  task :reset => [:drop, :migrate]

  desc "drop the db"
  task :drop do
    connection_details = YAML::load(File.open('config/database.yml'))
    File.delete(connection_details.fetch('database')) if File.exist?(connection_details.fetch('database'))
  end

  desc "start console"
  task :console do
    Pry.start
  end
end

require "rubygems"
require "active_record"
class Db
ActiveRecord::Base.establish_connection({
               :adapter=> "mysql", :user=>"root", :password=> "root", :database=>"project_development"})

end
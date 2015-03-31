namespace :refresh_models do
  desc "Creates all new models"
    task :create => :environment do

      ActiveRecord::Base.connection.tables.each do |table|
        File.open("app/models/#{table}.rb", "w+") do |f|
          f.write("class #{table.camelize} < ActiveRecord::Base \n \nend")
        end
        puts "Created #{table.camelize} model"
      end
    end

end

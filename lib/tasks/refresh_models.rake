namespace :refresh_models do
  desc "Creates all new models"
    task :create => :environment do

      ActiveRecord::Base.connection.tables.each do |table|
        File.open("app/models/#{table}.rb", "w+") do |f|
          f.write("class #{table.classify} < ActiveRecord::Base \n \nend")
        end
        puts "Created #{table.classify} model"
      end
    end

end

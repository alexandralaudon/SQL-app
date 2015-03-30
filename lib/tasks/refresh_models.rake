namespace :refresh_models do
  desc "Creates all new models"
  task :create => :environment do

  system("touch test.rb")
  end

end

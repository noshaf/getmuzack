task :visits => :environment do
  Visit.all.count
end
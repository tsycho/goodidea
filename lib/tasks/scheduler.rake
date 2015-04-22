desc "This task is called by the Heroku scheduler add-on. We'll just query the home page to keep it alive."
task :query_home => :environment do
  puts "Scheduler::> Loading the home page"
  Net::HTTP.get("http://goodideas.herokuapp.com", "/index.html")
end

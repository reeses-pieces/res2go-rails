require 'rufus/scheduler'
scheduler = Rufus::Scheduler.new

if Rails.env.production?
  scheduler.cron '0 9-21 * * *' do
     require "net/http"
     require "uri"
     Net::HTTP.get_response(URI.parse(ENV["HOSTNAME"]))
  end
end
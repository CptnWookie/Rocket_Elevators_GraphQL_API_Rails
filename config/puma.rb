workers Integer(ENV['WEB_CONCURRENCY'] || 2)
threads_count = Integer(ENV['RAILS_MAX_THREADS'] || 5)
threads threads_count, threads_count

preload_app!

rackup      DefaultRackup
port        ENV['PORT']     || 3000
environment ENV['RACK_ENV'] || 'development'

on_worker_boot do
  # Worker specific setup for Rails 4.1+
  # See: https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server#on-worker-boot
  ActiveRecord::Base.establish_connection(
    adapter: "mysql2",
    encoding: "utf8",
    pool: ENV.fetch("RAILS_MAX_THREADS") { 5 },
    username: "codeboxx",
    password: "Codeboxx1!",
    host: "codeboxx.cq6zrczewpu2.us-east-1.rds.amazonaws.com",
    database: "Alexandre_Leblanc"
  )
end
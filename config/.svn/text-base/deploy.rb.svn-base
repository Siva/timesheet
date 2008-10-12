set :application, "timesheet"
set :domain,      "209.20.72.67"
set :repository,  "svn://209.20.72.67/timesheet_repo/timesheet/trunk"
set :use_sudo,    true
set :deploy_to,   "/home/google/app/#{application}"
set :scm,         "subversion"
set :user,    "google"

role :app, domain
role :web, domain
role :db,  domain, :primary => true

namespace :deploy do
  desc "Restart Application"
  task :restart, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt"
  end
end

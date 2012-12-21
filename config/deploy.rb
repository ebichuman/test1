require 'mina/bundler'
require 'mina/rails'
require 'mina/git'

set :domain, '192.168.56.101'
set :deploy_to, '/opt/nginx/html/'
set :repository, 'https://github.com/ebichuman/test1'
set :user, 'deployer'
set :identity_file, '/Users/jorge-granado/.ssh/centos_deployer'

set :shared_paths, %w[config/database.yml public/uploads public/assets log]

desc "Deploys the current version to the server."
task :deploy do
  deploy do
    invoke :'git:clone'
    #invoke :'deploy:link_shared_paths'
    #invoke :'bundle:install'
    #invoke :'rails:db_migrate'
    #invoke :'rails:assets_precompile'
  end
end

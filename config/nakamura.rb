set :application, "sample1"
set :use_sudo, false
ssh_options[:keys] = [File.join(ENV["HOME"], ".ssh", "centos_deployer")]
set :user, 'deployer'
set :repository, "/Users/jorge-granado/Documents/git-repos/test1"
set :scm, :none
set :deploy_via, :copy
set :copy_compression, :bz2
set :deploy_to, '/opt/nginx/html2'
set(:release_name) {
  set :deploy_timestamped, true; Time.now.strftime("%Y%m%d%H%M%S")
}
set :normalize_asset_timestamps, false

role :web, '192.168.56.101'

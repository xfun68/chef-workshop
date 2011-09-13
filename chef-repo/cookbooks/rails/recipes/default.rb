include_recipe "rails::rvm"
include_recipe "rails::ree"

include_recipe "rails::directory"

execute "Clone Code" do
  user node.user
  group node.group
  cwd "#{node.home}/workspace"
  command "git clone git://github.com/flicker1985/demo.git"
end

bash "Start App" do
  user node.user
  group node.group
  code <<-EOF
    cd #{node.home}/workspace/demo
    source #{node.home}/.rvm/scripts/rvm
    gem install bundler
    bundle install
    ruby server.rb
  EOF
end
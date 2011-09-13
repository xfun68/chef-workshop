bash "Install Ruby Enterprise" do
  user node.user
  group node.group
  code "source \"#{node.home}/.rvm/scripts/rvm\" && rvm install #{node.ree.version} && rvm use #{node.ree.version} --default"
  environment ({'HOME' => "#{node.home}"})
end
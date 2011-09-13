directory "#{node.home}/workspace" do
  recursive true
  action :delete
end

directory "#{node.home}/workspace" do
  owner node.user
  group node.group
  mode 0755
  action :create
end
bash "Install RVM" do
  user node.user
  group node.group
  code <<-EOF
    bash < <(curl -s https://rvm.beginrescueend.com/install/rvm)
  EOF
  environment ({'HOME' => "#{node.home}"})
end
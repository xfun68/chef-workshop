package "curl" do
  action :install
end

["zlib1g-dev", "libssl-dev", "libreadline5-dev"].each do |name|
  package "#{name}" do
    action :install
  end 
end

package "git-core" do
  action :install
end

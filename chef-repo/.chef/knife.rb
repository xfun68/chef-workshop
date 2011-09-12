current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "helloworld"
client_key               "#{current_dir}/helloworld.pem"
validation_client_name   "chef-workshop-validator"
validation_key           "#{current_dir}/chef-workshop-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/chef-workshop"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]

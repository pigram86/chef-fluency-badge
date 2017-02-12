# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "todd"
client_key               "#{current_dir}/todd.pem"
chef_server_url          "https://pigram863.mylabserver.com/organizations/learning"
cookbook_path            ["#{current_dir}/../cookbooks"]

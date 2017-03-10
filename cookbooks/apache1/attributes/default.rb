case node["platform"]
when "ubuntu"
	defult["package_name1"] = "apt-get update -y"
	default["package_name2"] = "apache2"
        deafult["service_name"] = "apache2"
	default["file_name"] = "/var/www"
when "centos"
	default["package_name1"] = "yum update -y"
	default["package_name2"] = "httpd"
	default["service_name"] = "httpd"
	default["file_name"] = "/var/www/html"
end


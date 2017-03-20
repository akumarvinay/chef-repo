name "webserver"
description "Creating webserver role"
run_list "recipe[my-company]","recipe[apache1]"
default_attributes({"company"=>"Tata Consultancy Services"})

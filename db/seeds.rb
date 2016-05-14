# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Role.create(name: "ADMIN", description: "Admining")
User.create(first_name:"Pekka", last_name:"Pouta", admin: true, email: "email@uuh.com", role_id: 1)
CompanyType.create(name: "Komppis", description:"Kamppis")
Company.create(name:"Komppani", email:"eh@eh.com", company_type_id: 1)
Restaurant.create(name:"Ravinteli", company_id: 1, email:"ehhe@hoh.com")
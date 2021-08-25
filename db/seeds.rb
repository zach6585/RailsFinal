# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



worker1 = Worker.create(:name => "James Colleta", :email => "jamesyboy123@gmail.com")

worker2 = Worker.create(:name => "zachary mines", :email => "moustacheman531@gmail.com", :admin => true)

contact1 = Contact.create(:company => "Greg's", :name => "Greg Senior", :email => "gregs@yahoo.com", :number => "num11", :title => "mr", :old_address => "ha", :new_address=> "bye", :category => "EU",:broker_name=> "jim", :broker_company=> "jim's", :broker_number=> "11111111", :notes=> "")
contact1.workers << worker2

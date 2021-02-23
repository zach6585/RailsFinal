# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



worker1 = Worker.create(:name => "James Colleta", :email => "jamesyboy123@gmail.com")

worker2 = Worker.create(:name => "zachary mines", :email => "moustacheman531@gmail.com", :admin => true)

# contact1 = Contact.create(:title => "Best Customer", :wbw_worker_id => 1, :contact_id => 1, :notes => "")
# customer2 = Customer.create(:title => "Even better Customer", :wbw_worker_id => 2, :contact_id => 1, :notes => "")


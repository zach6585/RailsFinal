# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



worker1 = WbwWorker.create(:name => "James Colleta", :email => "jamesyboy123@gmail.com")
contact = Contact.create(:name => "Billybob Thornton", :email => "Therealbillybob@gmail.com")
worker2 = WbwWorker.create(:name => "zachary mines", :email => "moustacheman531@gmail.com", :admin => true)

customer1 = Customer.create(:title => "Best Customer", :wbw_worker_id => 1, :contact_id => 1, :notes => "")
customer2 = Customer.create(:title => "Even better Customer", :wbw_worker_id => 2, :contact_id => 1, :notes => "")


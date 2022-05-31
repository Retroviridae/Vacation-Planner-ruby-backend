puts "deleting old"
Destination.all.destroy_all
Trip.all.destroy_all
Stop.all.destroy_all

puts "🌱 Seeding spices..."

# Seed your database here
puts "creating destinations"
d1= Destination.create(name:"inks lake")
d2= Destination.create(name:"loveland,CO")
d3= Destination.create(name:"Whistler Bike Park")
d4= Destination.create(name:"Peru")
d5= Destination.create(name:"Germany")
 puts "creating trips"
 t1 = Trip.create(title:"Biking", description:"biking in texas and canada")
 t2 = Trip.create(title:"Colorado Ski", description:"Going to loveland!!!")
 t3 = Trip.create(title:"International", description:"South america and ")
puts "creating stops"

s1= Stop.create(destination_id:d1[:id], trip_id:t1[:id])
s2 =Stop.create(destination_id:d3[:id], trip_id:t1[:id])
s3 =Stop.create(destination_id:d2[:id], trip_id:t2[:id])
s4 =Stop.create(destination_id:d4[:id], trip_id:t3[:id])
s5 = Stop.create(destination_id:d5[:id], trip_id:t3[:id])




puts "✅ Done seeding!"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
=begin
15.times do |index|
  City.create(name: "City#{index}")
end
=end

100.times do |index|
  Patient.create(first_name: "Prénom#{index}", last_name: "Nom#{index}", city: City.all.sample)
  Doctor.create(first_name: "Prénom#{index}", last_name: "Nom#{index}", city: City.all.sample)
end

=begin
10.times do |index|
  Speciality.create(name: "spécialité#{index}")
end
=end

100.times do |index|
  Appointment.create(doctor: Doctor.all.sample, patient: Patient.all.sample, date: DateTime.new(rand(2000..2020),rand(1..11),rand(1..25)))
end

50.times do |index|
  JoinTableSpecilityDoctor.create(doctor: Doctor.all.sample, speciality: Speciality.all.sample)
end
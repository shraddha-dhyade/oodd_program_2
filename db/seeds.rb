# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#user = User.create(name: "ojas", phone: 1234567890, email: 'admin@role.com', encrypted_password:"qwerty", role: 'admin')
mainAdminUser = User.new(
    email: "admin@propertyhub.com",
    password: "qwerty",
    password_confirmation: "qwerty",
    name: "admin",
    phone: 1234567890,
    role: "admin"
)
#mainAdminUser.skip_confirmation!
mainAdminUser.save!
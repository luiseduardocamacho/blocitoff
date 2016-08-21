10.times do
User.create!(
  email: Faker::Internet.email,
  password: "mystring",
  password_confirmation: "mystring",
  confirmed_at: Date.today,
  )
end

users = User.all

15.times do
  Item.create!(
    user: users.sample,
    name: Faker::Pokemon.name
  )
end

User.create!(
email: 'luiscamacho@gmail.com',
password: "12341234",
password_confirmation: "12341234",
confirmed_at: Date.today,
)

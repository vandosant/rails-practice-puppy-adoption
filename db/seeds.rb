User.destroy_all

user = User.create!(
  name: "Some User",
  email: 'user@example.com',
  password: 'password',
  password_confirmation: 'password'
)

other_user = User.create!(
  name: "Other User",
  email: 'other@example.com',
  password: 'password',
  password_confirmation: 'password'
)

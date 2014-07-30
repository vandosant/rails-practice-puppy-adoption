User.destroy_all
Puppy.destroy_all

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

%w(
http://imgur.com/r6OBF6k.jpg
http://imgur.com/WjVh59i.jpg
http://imgur.com/IP13MNV.jpg
http://imgur.com/9GydsYf.jpg
http://imgur.com/cnsQ12C.jpg
http://imgur.com/3WxYkiR.jpg
).each do |image|
          Puppy.create!(image: image)
end

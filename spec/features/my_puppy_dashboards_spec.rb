feature 'managing puppies' do
  scenario 'add a puppy to the dashboard' do
    create_user email: "user@example.com"
    puppy = Puppy.create!(image: 'http://imgur.com/r6OBF6k.jpg')

    visit root_path
    click_on "Login"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    click_on "Login"

    click_link "Add Me!"

    visit my_puppy_dashboard_path

    expect(page).to have_xpath('//img[@src="http://imgur.com/r6OBF6k.jpg"]')
    expect(page).to have_content "Added Puppies:"
  end

  scenario 'view my puppy dashboard' do
    user = create_user email: "user@example.com"
    puppy = Puppy.create!(image: 'http://imgur.com/r6OBF6k.jpg')
    AddedPuppy.create!(user_id: user.id, puppy_id: puppy.id)

    visit root_path
    click_on "Login"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    click_on "Login"

    visit root_path

    click_link "My Puppy Dashboard"

    expect(page).to have_content "Added Puppies:"
    expect(page).to have_xpath('//img[@src="http://imgur.com/r6OBF6k.jpg"]')
  end
end
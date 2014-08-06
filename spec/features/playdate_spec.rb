feature 'managing play dates' do
  scenario 'create a play date' do
    user = create_user email: "user@example.com"
    puppy = Puppy.create!(image: 'http://imgur.com/r6OBF6k.jpg')
    AddedPuppy.create!(user_id: user.id, puppy_id: puppy.id)

    login(user)

    visit my_puppy_dashboard_path

    click_link "Make a Play Date"

    fill_in "Date", with: 2.days.from_now
    fill_in "play_date_guest_count", with: 2
    click_button "Schedule"

    expect(page).to have_content "Upcoming Play Dates:"
    expect(page).to have_xpath('//img[@src="http://imgur.com/r6OBF6k.jpg"]')
    expect(page).to have_content (2.days.from_now).to_formatted_s(:long)
    expect(page).to have_content "2 People Attending"
  end
end
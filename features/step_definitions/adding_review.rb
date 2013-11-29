When(/^I visit that page$/) do
  click_link "Big Bite"
  expect(current_path).to eq '/restaurants/3'
end

When(/^write a review and give it a rating$/) do
  fill_in 'Review', with: 'Tastulence in extremis'
  fill_in 'Rating', with: '5'
  click_button 'Add review'
  expect(page).to have_content 'Review added'
end

Then(/^I should see that review$/) do
  expect(page).to have_content 'Tastulence in extremis'
  expect(page).to have_content '5'
end
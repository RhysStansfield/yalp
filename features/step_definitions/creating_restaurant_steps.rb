Given(/^I am signed in$/) do
  visit '/users/sign_up'
  fill_in 'Email', with: 'derp@flerp.com'
  fill_in 'Password', with: 'thisisapassword'
  fill_in 'Password confirmation', with: 'thisisapassword'
  click_button 'Sign up'
  expect(current_path).to eq '/'
end

When(/^I visit the add restaurant page and add a restaurant$/) do
  visit '/restaurants/new'
  fill_in 'Name', with: 'Big Bite'
  fill_in 'Description', with: 'A centrally based restaurant specialising in big burgers.'
  click_button 'Add restaurant'
end

Then(/^I should see the restaurant on the page$/) do
  expect(page).to have_content "Big Bite"
end

Given(/^there is a restaurant added to the site$/) do
  visit '/restaurants/new'
  fill_in 'Name', with: 'Big Bite'
  fill_in 'Description', with: 'A centrally based restaurant specialising in big burgers.'
  click_button 'Add restaurant'
  expect(page).to have_content "Big Bite"
  expect(current_path).to eq '/'
end

When(/^I visit that restaurants page$/) do
  click_link "Big Bite"
  expect(current_path).to eq '/restaurants/2'
end

Then(/^I should see the info about that restaurant$/) do
  expect(page).to have_content 'A centrally based restaurant specialising in big burgers.'
end
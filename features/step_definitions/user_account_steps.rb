Given(/^I am a new user with name "(.*?)"$/) do |name|
  user = User.find_by_twitter_name(name)
  expect(user).to be_nil
end

When(/^I go to sign up with Twitter$/) do
  visit signin_path
end

Then(/^I should be able to create a user account$/) do
  expect(User.count).to eq(1)
  expect(page).to have_content('Signed in with Twitter!')
end

Given(/^I have an existing account with twitter with name "(.*?)"$/) do |name|
  existing_user = User.create!(twitter_name: name, twitter_uid: '123455', twitter_nickname: 'nickname')
  user = User.find_by_twitter_name(name)
  expect(user).to_not be_nil
end

When(/^I go to link account with Redbooth$/) do
  visit root_path
  click_link 'Link Redbooth'
end

Then(/^I should be able to link the account with redbooth$/) do
  expect(page).to have_content('Linked Redbooth account')
end


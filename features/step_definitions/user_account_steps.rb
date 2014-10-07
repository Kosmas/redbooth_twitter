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

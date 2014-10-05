Given(/^I am a new user with name "(.*?)"$/) do |name|
  user = User.find_by_twitter_name(name)
  expect(user).to be_nil
end

When(/^I go to sign up with Twitter$/) do
  visit 'Sign up with Twitter'
  click 'Twitter'
end

Then(/^I should be able to creat a user account$/) do
    pending # express the regexp above with the code you wish you had
end

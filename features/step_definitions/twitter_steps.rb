Given(/^there is a mention "(.*?)" for twitter handle "(.*?)"$/) do |mention, handle|
  # Store the mention and handle for use in following steps
  @mention = mention
  @handle = handle
  # Create the mention in twitter
  Twitter.post("#{@hanlde} is #{@mention}")
end

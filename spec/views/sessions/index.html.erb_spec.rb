require 'rails_helper'

RSpec.describe "sessions/index.html.erb", type: :view  do
  it "displays the redbooth link" do
    render
    expect(rendered).to include('Link Redbooth')
  end
end

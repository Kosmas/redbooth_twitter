require 'rails_helper'

RSpec.describe SessionsController, type: :controller  do

  before do
    OmniAuth.config.test_mode = true
    OmniAuth.config.mock_auth[:twitter] = OmniAuth::AuthHash.new({
      provider: :twitter,
      uid: '123456',
      info: { name: 'John Smith',
              nickname: 'spud'
            }
    })

    request.env['omniauth.auth'] = OmniAuth.config.mock_auth[:twitter]
  end
  
  describe "GET 'new'" do
    it "redirects users to authentication" do
      get 'new'
      expect(response).to redirect_to('/auth/twitter')
    end
  end

  describe "creates new user" do
    it "redirects to root path if user created successfully" do
      post 'create', provider: :twitter
      expect(User.count).to eq(1)
      expect(response).to redirect_to('/')
      expect(request.flash[:notice]).to_not be_nil
    end
  end
end

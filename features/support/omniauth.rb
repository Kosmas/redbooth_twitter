OmniAuth.config.test_mode = true
OmniAuth.config.mock_auth[:twitter] = OmniAuth::AuthHash.new({
  provider: :twitter,
  uid: '123456',
  info: { name: 'John Smith',
          nickname: 'spud'
        }
})

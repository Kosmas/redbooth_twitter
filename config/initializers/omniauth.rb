Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, Rails.application.secrets.twitter_consumer_key, Rails.application.secrets.twitter_consumer_secret
  provider :redbooth, Rails.application.secrets.redbooth_app_id, Rails.application.secrets.redbooth_app_secret
end

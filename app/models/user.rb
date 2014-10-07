class User < ActiveRecord::Base
  def self.find_or_create_from_auth_hash(auth)
    user = User.find_by_twitter_uid(auth['uid']) || User.create!(twitter_uid: auth['uid'], twitter_name: auth['info']['name'], twitter_nickname: auth['info']['nickname'])
  end
end

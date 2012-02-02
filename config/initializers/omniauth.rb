if Rails.env.production?
  Rails.application.config.middleware.use OmniAuth::Builder do
   provider :twitter, ENV['TWITTER_CONSUMER_KEY'], ENV['TWITTER_CONSUMER_SECRET']
  end
end

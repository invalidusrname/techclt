CarrierWave.configure do |config|

  if Rails.env.production?
    config.root = Rails.root.join('tmp')
    config.cache_dir = 'carrierwave'

    config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'],
      :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY'],
      :region                 => 'us-east-1'
    }
  end

  config.fog_directory  = 'techclt'
end

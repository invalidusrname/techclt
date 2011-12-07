ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "techclt.com",
  :user_name            => "welcome@techclt.com",
  :password             => Rails.env.production? ? ENV['GMAIL_PASSWORD'] : '',
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "techclt.com" if Rails.env.production?


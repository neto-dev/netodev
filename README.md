#  NetoDev
A Rails 5.2.2 applications with all that you need!!

#Download project
works with ruby 2.4.1p111 & rails 5.2.2

#Install gems
`bundle install`

# Create secrets file
Generate a 32 bits key with:
`rake db secret`

>create config/secrets.yaml with next entries:

`development:
  secret_key_base: YOUR_32_BITS_RANDOM_KEY`

# Add next values to your .env file in the root of your project:

>.env file

```SECRET_KEY_BASE: "YOUR_32_BITS_RANDOM_KEY"
CLOUDINARY_CLOUD: "your_cloudinary_cloud_name"
CLOUDINARY_API_KEY: "your_cloudinary_api_key"
CLOUDINARY_API_SECRET: "your_cloudinary_api_secret"

SMTP_MAILER_ADDRESS= "smtp_address"
SMTP_MAILER_PORT= "587"
SMTP_MAILER_DOMAIN= "yourdomain"
SMTP_MAILER_USER= "usersmtp"
SMTP_MAILER_PASSWORD= "smtp_password"

(login -> AWS SES, plain -> Sendgrid)
SMTP_AUTH="login"
```

#Setup database

>development

if database doesn't exist

`rake db:setup`

else

`rake db:migrate`


>test

`rake db:migrate RAILS_ENV=test`

#RUN TESTS

`rspec -f p`

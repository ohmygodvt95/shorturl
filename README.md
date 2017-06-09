# Shortener URLs
Short URLs like goo.gl project

### About project
- Author: LengKeng
- Email : ohmygodvt95@gmail.com
- Ruby 2.4.0 and Rails 5.1.1

### How to deploy
- Clone this project
- Fix Gemfile with your database
- Run `rails db:migrate`
- Add your info in `config/settings.yml` for facebook, google sign in

  ```jade
  auth:
    facebook:
      APP_ID: xxx
      APP_SECRET: xx
    google:
      APP_ID: "xxx"
      APP_SECRET: "xxx"
- Run `rails s` to start server


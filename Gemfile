source "https://rubygems.org"

ruby "3.2.8"

gem "rails", "~> 7.2.2", ">= 7.2.2.1"
gem "bootstrap-sass",  "3.4.1"
gem "sassc-rails",     "2.1.2"
gem "sprockets-rails", "3.4.2"
gem "importmap-rails", "1.1.5"
gem "turbo-rails",     "1.4.0"
gem "stimulus-rails",  "1.2.1"
gem "jbuilder",        "2.11.5"
gem "puma",            ">= 6.0.0"
gem "bootsnap",        "1.16.0", require: false
gem "sqlite3",         "1.6.1"
gem "concurrent-ruby", "1.3.4"
gem "bcrypt",          "3.1.18"
gem "faker",           "2.21.0"
gem "will_paginate",           "3.3.1"
gem "bootstrap-will_paginate", "1.0.0"

group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end

group :development do
  gem "web-console"
  gem "solargraph"
  gem "irb"
  gem "repl_type_completor"
end

group :test do
  gem "capybara",                 "3.38.0"
  gem "selenium-webdriver",       "4.8.3"
  gem "webdrivers",               "5.2.0"
  gem "rails-controller-testing", "1.0.5"
  gem "minitest",                 "5.18.0"
  gem "minitest-reporters",       "1.6.0"
  gem "guard",                    "2.18.0"
  gem "guard-minitest",           "2.4.6"
end

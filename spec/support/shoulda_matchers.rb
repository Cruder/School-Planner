# frozen_string_literal: true

# https://github.com/thoughtbot/shoulda-matchers#configuration
Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end

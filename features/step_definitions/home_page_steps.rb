# frozen_string_literal: true

Given(/^I am on the home page$/) do
  visit '/pouet'
end

Given(/^A homework "(.*?)" is scheduled to tomorrow$/) do |text|
  @assignment = FactoryBot.create :assignment, title: text
end

Then(/^I should see "(.*?)"$/) do |text|
  page.has_content?(text)
end

Then(/^I should see tomorrow date$/) do
  date = Date.tomorrow.strftime('%A %d %B %Y')
  page.has_content?(date)
end

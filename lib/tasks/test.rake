# frozen_string_literal: true

namespace :helpful do
  # Description of first task
  desc 'Greeting message task'
  # Task will establish functionality
  task greet: :environment do
    puts 'Hello, Dane! Welcome to the rake world!'
  end

  desc "Print reminder that you're a good coder and worth hiring"
  task love: :environment do
    puts "You completed Turing and now you're almost to the summit. You're worth it in every way, you can do it!"
  end

  desc 'Count the number of users in the database'
  task users: :environment do
    puts "There are #{User.count} users currently in the database."
  end
end

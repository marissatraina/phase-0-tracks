#===setting up database and requires====
require 'sqlite3'
require_relative 'cents'

db = SQLite3::Database.new("budget.db")

# create budget log table for future use
create_log_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS budget (
  id INTEGER PRIMARY KEY,
  username VARCHAR(255),
  log VARCHAR(255),
  money INT,
  total INT
  )
SQL

db.execute(create_log_cmd)


#====CENTSFUL USER INTERFACE====
puts "Welcome to Centsful!"
puts "Enter 'start' to begin budgeting or 'exit' to shut down:"
input = gets.chomp.downcase 

until input == 'exit'

  if input == 'start'
  puts "Enter 'new' if you are new or enter your username:"
  username = gets.chomp.downcase
    if username == 'new'
      puts "Please enter a lowercase username that you will remember:"
      username = gets.chomp.downcase

      puts "Enter your current total savings down to the cents with digits only:"
      total = gets.chomp.to_f
      account = Centsful.new(total)
      account.update(db, username, "new account", account.total)
      account.display_records(db, username)

      puts "Would like to enter this week's paycheck?(y/n)"
      pay = gets.chomp.downcase
      if pay == 'y'
        puts "Enter amount down to the cents:"
        paycheck = gets.chomp.to_f.round(2)
        account.store(paycheck)
        account.update(db, username, "5/12 paycheck", account.total, paycheck)
        account.display_records(db, username)
      end


    end

  end

  puts "Please enter 'start' to budget or 'exit':"
  input = gets.chomp.downcase
end

#====DRIVER CODE====


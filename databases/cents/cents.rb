#======Centsful Database====

require 'sqlite3'

# create sqlite3 database

db = SQLite3::Database.new("budget.db")

class Centsful
  attr_reader :total

  def initialize(total)
    @total = total.round(2)
    @savings = []
    @groupings = {}
  end

  def store(money)
    @total += money
  end 

  def monthly_rent(rent)
    save = rent/4.345
    save = save.round(2)
    @savings << save
    @total = @total - save
  end

  def allocate(section, percentage)
    percentage = percentage/100.0
    @groupings[section] = percentage
  end

  # def print_groups
  #   puts "Paycheck Percentages"
  #   puts "--------------------"
  #   @groupings.each |section, percentage|
  #     puts "#{section} --> #{percentage}%"
  #   end
  # end

end


# # create budget log table
# create_table_cmd = <<-SQL
#   CREATE TABLE IF NOT EXISTS budget (
#   id INTEGER PRIMARY KEY,ru
#   )
# SQL

#===DRIVER CODE===
marissa = Centsful.new(2000.25)
p marissa.total
marissa.store(550)
p marissa.total
marissa.monthly_rent(900)
p marissa.total
# marissa.allocate("Food", 25)
# marissa.print_groups
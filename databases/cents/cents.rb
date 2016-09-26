#======CENTSFUL CLASS=====

class Centsful
  attr_accessor :total

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

  def remove_group(group)
    @groupings.delete(group)
  end

  def print_groups
    puts "Paycheck Percentages"
    puts "--------------------"
    @groupings.each do |section, percentage|
      percentage = percentage * 100
      puts "#{section} --> #{percentage} %"
    end
  end

  def update(db, username, memo, total, money=@total)
    db.execute("INSERT INTO budget (username, log, money, total) VALUES (?, ?, ?, ?)", [username, memo, money, total])
  end

  def display_records(db, username)
    arr = db.execute("SELECT * FROM budget WHERE username = ?", [username]) 
    arr = arr.join(' | ') 
    puts arr
  end

end


#===DRIVER CODE===
# marissa = Centsful.new(2000.25)
# p marissa.total
# marissa.store(550)
# p marissa.total
# marissa.monthly_rent(900)
# p marissa.total
# marissa.allocate("Food", 25)
# marissa.print_groups
# marissa.allocate("Fun", 35)
# marissa.print_groups
# marissa.remove_group("Fun")
# marissa.print_groups
# sum = marissa.total


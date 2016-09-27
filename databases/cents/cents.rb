#======CENTSFUL CLASS=====

class Centsful
  attr_accessor :total

  def initialize(total)
    @total = total
    @savings = []
    @records = {}  
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
    tracking = db.execute("SELECT budget.id FROM budget WHERE username = ?", [username])
    tracking.each do |arr|
      index = arr[0].to_i
      usr = db.execute("SELECT budget.username FROM budget WHERE id = ?", [index]) 
      usr = usr.join('')
      log = db.execute("SELECT budget.log, budget.money, budget.total FROM budget WHERE id = ?", [index])
      log = log.join(' | ')
      @records[usr] = log
    end
    p @records

    puts "Username       Memo       Transaction       Balance"
    puts "===================================================="
    @records.each do |usr, log|
      puts "#{usr} => #{log}"
    end
  end

end


#===DRIVER CODE===
# marissa = Centsful.new(2000.25)
# p marissa.total
# marissa.display_records(db, "marissatraina")
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


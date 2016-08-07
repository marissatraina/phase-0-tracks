#Vampire Detector

puts "Welcome to the new employee survey!"
puts "How many employees will be processed?"
n = gets.chomp
n = n.to_i
num = 0

    while num < n
      num = num + 1

      puts "Employee #{num}, what is your name?"
      name = gets.chomp
      puts "How old are you?"
      age = gets.chomp
      puts "What year were you born?"
      birth_year = gets.chomp
      puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
      garlic = gets.chomp
      puts "Would you like to enroll in the company's health insurance? (y/n)"
      insurance = gets.chomp
      puts "Name any allergies you have. Press enter after each allergy and type done when finished."
        
        allergies = []
        while true
          allergy = gets.chomp
          break if allergy == "sunshine"
          break if allergy == "done"
          allergies << allergy
        end

     if allergy != "sunshine"

      puts "Employee #{num} Information:"
      puts "Name: #{name}"
      puts "Age: #{age}"
      puts "Birth year: #{birth_year}"
      puts "Garlic Bread Order: #{garlic}"
      puts "Health Insurance: #{insurance}"
      puts "Allergy Information: " + allergies.join(", ")
      puts "Employee #{num} Results:"

        year = false
        birthday = 2016 - birth_year.to_i

          if age.to_i == birthday
            year = true
          end

          if garlic == "y"
            bread = true
          else bread = false
          end 

          if insurance == "y"
            health = true
          else health = false
          end

        vampire = false 

            until vampire == true
              if name == "Drake Cula"
                vampire = true
                puts "Definitely a vampire."
              elsif name == "Tu Fang"
                vampire = true
                puts "Definitely a vampire."
              elsif year && (bread || health) == true
                vampire = true
                puts "Probably not a vampire."
              elsif (year || bread || health) == false
                vampire = true
                puts "Almost certainly a vampire."
              elsif year || (bread && health) == false
                vampire = true
                puts "Probably a vampire."
              else vampire = true
                  puts "Inconclusive."
              end
            end

            elsif allergy == "sunshine"
              puts "Employee #{num} Results: Probably a vampire!!"
          end
        end
   



 

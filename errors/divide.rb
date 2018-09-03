# This is a simple divider.
# Imagine the user tries to divide by zero
# Ruby will rightfully freak out and crash with a ZeroDivisionError
# Let's bring in some error handling to display a nice message.
#

#
#
# Code along challenge: if they hit an error, take them back to "give me a number"

# Refactoring classmates code

# ask user for 3+ grocery items and store in a list
# .length how many items in the list
# .sort the list alphabetically
# three times loop using count command
# "What quantity would you like?" !!!
# puts "What quantity of #{item} do you want?"

grocery_list = []
quantities = []
count = 0
puts "What grocery items do you need?"
item = gets.chomp
    until count == 3
        #add grocery item to list
        grocery_list.push(item)
        puts "What quantity would you like?" # interpolate item?
        quantity = gets.chomp #specifiy as integer?
        quantities.push(quantity)
        if count == 2
            puts "Thanks for shopping!"
        else
            puts "What else do you need?"
            item = gets.chomp
        end
        count += 1
    end

# replace ice-cream with broccoli
grocery_list = grocery_list.map {|item|item == "ice-cream"? "broccoli":item}

# Testing commands
puts "You have #{grocery_list.length} items in your list."
#puts "Grocery List: #{grocery_list.zip(quantities).sort.join(", ")}"

# QUANTITY IDEAS
# 1. create new array for quantities & combine when printing list
#   printing ideas:
#   - access and link elements from both arrays
#   - align elements from arrays using interpolation !doesn't sort
# 2. use hash to assign a quanity value to items key
# 3. push quanities into item array and access/print in pairs
# issues: quantities are included in .length so prints as 6 items

puts "GROCERY LIST"
puts grocery_list.zip(quantities).join(", ")
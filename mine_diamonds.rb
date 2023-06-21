# @param {String}
# @puts {Integer}

def mine_diamonds(string)
  # create a variable at 0 to counter the mined diamonds
  counter_diamonds = 0
  # mine sands('.') the string
  string.delete!('.')
  # create a loop to iterate with string
  while string.include?('<>')
    # every time '<>' is found, the counter will increase by 1
    counter_diamonds += string.scan(/<>/).count
    # replace diamonds to empty string to ensure that loop finds another '<>'
    string.gsub!('<>', '')
  end
  puts "Output: #{counter_diamonds}"
  puts "You've mined #{counter_diamonds} diamonds"
end

mine_diamonds('<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>')

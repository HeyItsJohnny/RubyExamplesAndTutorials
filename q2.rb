class Q2
  def StudentFunction(stu)
    header()
    ###########Iterate and put each student down###########
    stu.each do |num|
      puts "#{num[:firstname]} | #{num[:lastname]} | #{num[:phonenumber]}"
    end
    puts ""
  end

  def searchByFirstName(stu,fn)
    header()
    printError = true
    ###########ITERATE AND PRINT ONLY IF FIRST NAME EQUALS###########
    stu.each do |num|
      if num[:firstname] == fn
        puts "#{num[:firstname]} | #{num[:lastname]} | #{num[:phonenumber]}"
        printError = false
      end
    end
    ###ERROR CATCHING###
    if printError == true
      puts "ERROR... No matches were found"
    end
    puts ""
  end

  def searchByLastName (stu,ln)
    header()
    printError = true
    ###########ITERATE AND PRINT ONLY IF LAST NAME EQUALS###########
    stu.each do |num|
      if num[:lastname] == ln
        puts "#{num[:firstname]} | #{num[:lastname]} | #{num[:phonenumber]}"
        printError = false
      end
    end
    ###ERROR CATCHING###
    if printError == true
      puts "ERROR... No matches were found"
    end
    puts ""
  end

  ########Header to display##############
  def header
    puts "List of all students: "
    puts "First Name | Last Name | Phone Number"
    puts "-------------------------------------"
  end
  ########Header to display##############

end
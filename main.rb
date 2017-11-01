#!/usr/bin/ruby
require_relative "q1.rb"
require_relative "q2.rb"
require_relative "q3.rb"
require_relative "q4.rb"
require_relative "q5.rb"
require_relative "q6.rb"
require_relative "q7.rb"
require_relative "q8.rb"

class Main
  attr_accessor :program_to_run
  def startProgram
    #########MAIN Introduction###########
    puts "Please enter a homework question to run or exit the program: (1 - 8)"
    puts "- 1: Run Question 1 word count program"
    puts "- 2: Run Question 2 student record query example"
    puts "- 3: Run Question 3 surrounding class with characters example"
    puts "- 4: Run Question 4 Compress string program"
    puts "- 5: Run Question 5 program with class methods and class instance variable"
    puts "- 6: Run Question 6 merge and merge value example"
    puts "- 7: Run Question 7 Enumerable Example"
    puts "- 8: Run Question 8 Advisor/Student File IO Conversation Example"
    puts "- 0: Command will exit the program completely...."
    puts ""
    puts "Input Homework number to RUN: "

    program = Integer(gets)    #Get user input
    #########MAIN Introduction###########

    #########User Input Error Checking###########
    case program
      when 1
        RunQ1Program()
      when 2
        RunQ2Program()
      when 3
        RunQ3Program()
      when 4
        RunQ4Program()
      when 5
        RunQ5Program()
      when 6
        RunQ6Program()
      when 7
        RunQ7Program()
      when 8
        RunQ8Program()
      when 0
        puts "Exiting Jonathan's Assignment 2 program.."
        exit 100
      else
        displayInvaliduserInput
    end
    self.startProgram
    #########User Input Error Checking###########

  end

  def RunQ1Program
    q = Q1.new
    stringExample2 = {'1'=>'one','2'=>'two','3'=>'three','4'=>'four'}

    puts "Welcome to Question 1... Please enter a function to do for Question 1:"
    puts "- 1: Show strings used in example 1 and 2"
    puts "- 2: Example 1 - Run Search Find on a given word E.G.(count_word(str, “and”))"
    puts "- 3: Example 2 - Count number of occurences for string hash"
    puts "- 4: Exit to main menu"

    q1_program = Integer(gets)    #Get user input

    case q1_program
      when 1
        puts "EXAMPLE 1 STRING: #{q.str}"
        puts "EXAMPLE 2 STRING: (#{stringExample2["1"]},#{stringExample2["2"]},#{stringExample2["3"]},#{stringExample2["4"]})"
        puts ""
      when 2
        puts "Enter word to search: "
        q1_word = gets
        q1_word = q1_word.chomp

        if q1_word == ""
          displayBlankError()
        else
          q.count_word(q.str,q1_word)
        end
      when 3
        q.count_word(stringExample2)
      when 4
        self.startProgram
      else
        displayInvaliduserInput
    end
    self.RunQ1Program()
  end

  def RunQ2Program
    q = Q2.new

    ################Self Defined Student Array#####################
    students = [
        {:firstname => "Bruce", :lastname => "Wayne",  :phonenumber => 123456789},
        {:firstname => "Bruce", :lastname => "Lee",  :phonenumber => 456734244},
        {:firstname => "Martha", :lastname => "Stewart",  :phonenumber => 443234567},
        {:firstname => "Colin", :lastname => "Kaepernick",  :phonenumber => 456734244},
        {:firstname => "Arnold", :lastname => "Palmer",  :phonenumber => 456738244},
        {:firstname => "Colin", :lastname => "Williams",  :phonenumber => 3940329320},
        {:firstname => "Peter", :lastname => "Parker",  :phonenumber => 6633333212}
    ]
    ################Self Defined Student Array#####################

    puts "Welcome to Question 2... Please enter a function to do for Question 2:"
    puts "- 1: Display all students in the array"
    puts "- 2: Search first name in hash:"
    puts "- 3: Search last name in hash:"
    puts "- 4: Exit to main menu"

    q2_program = Integer(gets)    #Get user input

    case q2_program
      when 1
        q.StudentFunction(students)
      when 2
        puts "Please enter a first name to search: "
        wordToSearch = gets
        wordToSearch = wordToSearch.chomp
        q.searchByFirstName(students,wordToSearch)
      when 3
        puts "Please enter a last name to search: "
        wordToSearch = gets
        wordToSearch = wordToSearch.chomp
        q.searchByLastName(students,wordToSearch)
      when 4
        self.startProgram
      else
        displayInvaliduserInput
    end
    self.RunQ2Program()
  end

  def RunQ3Program
    puts "Welcome to Question 3... Please enter a function to do for Question 3:"
    puts "- 1: Display all examples strings"
    puts "- 2: Run Question 3 examples"
    puts "- 3: Exit to main menu"

    q3_program = Integer(gets)    #Get user input

    case q3_program
      when 1
        puts "Initializing Example 1: obj = Enclose.new(“<“, “>”, “i”, “love”, “you”)"
        puts "Reset Example 2: obj.set(“<“, “>”, “i”, “love”, “you”, “very”, “much”)"
        puts "Reverse Order Example 3:(“much”,“very”, “love”,“i”, “<“, “>”"
        puts ""
      when 2
        q = Q3.new("<",">","I","Love","You")
        q.set("<",">","I","Love","You","very","much")

        q2 = Q3.new("<",">","I","Love","You")
        def q2.set(st1,st2,*others)
          print "Reversing array: "
          puts ""
          iv = []
          iv << "#{st1}|#{st2}"

          others.each do |hit|
            iv << hit
          end
          puts "#{iv.reverse!}"
        end
        q2.set("<",">","I","Love","You","very","much")

        puts ""
      when 3
        self.startProgram
      else
        displayInvaliduserInput
    end

    self.RunQ3Program()
  end

  def RunQ4Program
    puts "Welcome to Question 4... Please enter a function to do for Question 4:"
    puts "- 1: Display all examples strings"
    puts "- 2: Run Question 4 examples"
    puts "- 3: Exit to main menu"

    q4_program = Integer(gets)    #Get user input

    case q4_program
      when 1
        puts "Homework Problem 4:"
        puts "Compresses this string (i love you but do you love me) to this string (“i”, “love”, “you”, “but”, “do”, “me”) with index array."
        puts ""
      when 2
        q = Q4.new
        q.Compress("I love you but do you love me")
        puts "Words compressed into array: #{q.Words}"
        puts "Index for initial string: #{q.Index}"
        puts ""
      when 3
        self.startProgram
      else
        displayInvaliduserInput
    end
    self.RunQ4Program()
  end

  def RunQ5Program
    puts "Welcome to Question 5... Please enter a function to do for Question 5:"
    puts "- 1: Display all examples strings"
    puts "- 2: Run Question 5 program"
    puts "- 3: Exit to main menu"

    q5_program = Integer(gets)    #Get user input

    case q5_program
      when 1
        puts "Homework Problem 5:"
        puts "Compresses this string (i love you but do you love me) to this string (“i”, “love”, “you”, “but”, “do”, “me”) with index array."
        puts ""
      when 2
        q = Q5.new
        q = Q5.Compress("I love you but do you love me")
        q = Q5.GetWords
        q = Q5.GetIndex
        puts ""
      when 3
        self.startProgram
      else
        displayInvaliduserInput
    end
    self.RunQ5Program()
  end

  def RunQ6Program
    puts "Welcome to Question 6... Please enter a function to do for Question 6:"
    puts "- 1: Display all examples Hashes"
    puts "- 2: Run Question 6 program"
    puts "- 3: Exit to main menu"

    q6_program = Integer(gets)    #Get user input

    case q6_program
      when 1
        puts "Homework Problem 6:"
        puts "Reimplement the hash merge and merge! methods"
        puts 'Hash 1: h1 = {"a" => 100, "b" => 200}'
        puts 'Hash 2: h2 = {"b" => 254, "c" => 300}'
        puts ""
      when 2
        h1 = { "a" => 100, "b" => 200 }     #Define Hash Variable
        h2 = { "b" => 254, "c" => 300 }     #Define Hash Variable
        puts "Merge: #{h1.merge(h2)}"
        puts "Merge Value: #{h1.merge(h2){|key, val1, val2| val2 - val1}}"
        puts "Aftermath of merge: #{h1}"
        puts ""
        puts "Merge! #{h1.merge!(h2)}"
        puts "Aftermath of merge!: #{h1}"
        self.startProgram
      else
        displayInvaliduserInput
    end
    self.RunQ6Program()
  end

  def RunQ7Program
    puts "Welcome to Question 7... Please enter a function to do for Question 7:"
    puts "- 1: Display all examples strings"
    puts "- 2: Run Question 7 program"
    puts "- 3: Exit to main menu"

    q7_program = Integer(gets)    #Get user input

    case q7_program
      when 1
        puts "Homework Problem 5:"
        puts "Compresses this string (i love you but do you love me) to this string (“i”, “love”, “you”, “but”, “do”, “me”) with index array."
        puts ""
      when 2
        q = Q7.new
        q.Compress("I love you but do you love me")
        temp = ""
        temp2 = ""

        puts "Result of Each Entry: "
        q.each_entry{|o| p o}
        puts ""
        puts "Result of Reverse Each: "
        q.reverse_each {|o| p o}
        puts ""
        puts "Result of Longest character: "
        q.each_entry do |i|
          q.reverse_each do |j|
            if (i.length > j.length) && (i.length > temp.length)
              temp = i
            end
          end
        end
        puts "#{temp}"
        puts ""
        puts "Concatenate all words into a string: "
        q.inject {|i,j| temp2 = i + j }
        puts "#{temp2}"
        puts ""

      when 3
        self.startProgram
      else
        displayInvaliduserInput
    end
    self.RunQ7Program()
  end

  def RunQ8Program()
    puts "Welcome to Question 8... Please enter a function to do for Question 8:"
    puts "- 1: Display text dialog for ADVISOR and STUDENT"
    puts "- 2: Search only dialog for ADVISOR"
    puts "- 3: Search only dialog for STUDENT"
    puts "- 4: Exit to main menu"

    q8_program = Integer(gets)    #Get user input
    q = Q8.new

    case q8_program
      when 1
        q.displayAllData
        puts ""
      when 2
        q.displayOnlyADVISOR
        puts ""
      when 3
        q.displayOnlySTUDENT
        puts ""
      when 4
        self.startProgram
      else
        displayInvaliduserInput
    end
    self.RunQ8Program()
  end

  def displayInvaliduserInput
    puts "Invalid User Input...."
    puts "please provide valid user input to continue"
    puts ""
  end

  def displayBlankError
    puts "ERROR.. User input cannot be blank.."
    puts ""
  end

end

#########Main Program to Run###########
m = Main.new
m.startProgram
#########Main Program to Run###########
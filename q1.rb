class Q1
  def str
    <<HERE
    Facebook and its founder must release documents and electronic correspondence to a defense lawyer whose client has fled from criminal charges that he falsely claimed a majority ownership in the social media giant, a federal judge said Friday.
HERE
  end

  def count_word (str2,search="")
    if search == ""
      cnnt = str2.length
      puts "ANSWER:: Count of example hash elements E.G.({three,three,three,three}) is #{cnnt}"
      puts""
    else
      cnt = str2.scan("#{search}").count
      puts "ANSWER:: Number of times (#{search}) appears in the string is #{cnt}"
      puts""
    end
  end

end
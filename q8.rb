class Q8
  def displayAllData
    File.open("SampleData.txt").each do |line|
      puts line
    end
  end

  def displayOnlyADVISOR
    File.open("SampleData.txt").each do |line|
      if line.include? "ADVISOR"
        puts line
      end
    end
  end

  def displayOnlySTUDENT
    File.open("SampleData.txt").each do |line|
      if line.include? "STUDENT"
        puts line
      end
    end
  end
end
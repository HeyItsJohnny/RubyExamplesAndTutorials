class Q4
  attr_accessor :Words, :Index

  def Compress(wd="")

    if wd == ""
      puts "Error! Please enter word."
    else
      @Words = []
      @Index = []
      tempWrd = []

      tmp = wd

      tempWrd = tmp.split(" ")
      index = 0

      tempWrd.each do |i|
        found = @Words.include?("#{i}")
        if found == true
          @Index << @Words.index("#{i}")
        else
          @Words << i
          @Index << index
          index += 1
        end
      end
    end
  end

end


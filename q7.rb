class Q7
  attr_accessor :Words, :Index

  include Enumerable
  def each
    @Index.each do |i|
      yield "#{@Words.at(i)}"
    end
  end


  ############CODE MVOED OVER FROM Q4############
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
  ############CODE MVOED OVER FROM Q4############

end
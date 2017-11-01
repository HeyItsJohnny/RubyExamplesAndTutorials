class Q3
  attr_accessor :instanceVariable

  def initialize(st1,st2,*others)
    print "Initializing array: "
    set(st1,st2,*others)
  end

  def set(st1,st2,*others)
    print "Resetting array: "
    @instanceVariable = []
    @instanceVariable << "#{st1}|#{st2}"

    others.each do |hit|
      @instanceVariable << hit
    end

    print "#{@instanceVariable}"
    puts ""
  end

  class << self
    def reverseOrder
      puts "reverse order"
    end
  end

end
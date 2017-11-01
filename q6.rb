Hash.class_eval do         #redo the hash class
  #Define Merge method
  def merge(obj)
    tmpHash = {}
    self.each do |k1,v1|          #go through hash 1
      obj.each do |k2,v2|         #go through hash 2
        if k2 == k1               #if keys are the same
          if block_given?
            v1 = yield(k1,v1,v2)  #check if block is given THEN YIELD
          else
            v1 = v2
          end
        end
      end
      blankKeys = obj.keys - tmpHash.keys
      blankKeys.each do |k|
        tmpHash[k] = obj[k]
      end
    end
    return tmpHash      #return temporary hash object
  end

  #Define Merge! method
  def merge!(obj)
    self.each do |k1,v1|
      obj.each do |k2,v2|
        if k2 == k1
          if block_given?
            v1 = yield(k1,v1,v2)
          else
            v1 = v2
          end
        end
      end
      self[k1] = v1
    end
    blankKeys = obj.keys - self.keys
    blankKeys.each do |k|
      self[k] = obj[k]
    end
    return self
  end
end


class Role < ActiveRecord::Base
      has_many :auditions
      

    def actors
        self.auditions.collect(&:actor)  #self.auditions.map{|audition| audition.actor}
    end

      

    def locations 
        self.auditions.collect{|audition| audition.location }
    end 

    def lead 
        actor = self.auditions.find{|audition| audition.hired}
        if actor
         return actor
        else      
           return 'no actor has been hired for this role'
        end
    end
      
      
    def understudy
     actors = self.auditions.select{|audition| audition.hired}
      if actors.length > 1
        return actor[1]
      else      
          return  'no actor has been hired for understudy for this role'
          
       end
    end



end
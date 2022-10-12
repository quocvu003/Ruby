class CandidateManager
    attr_accessor :List
    List = []
    def addCandidate(candidate)
      List << candidate
    end
    
    def Seach(idStudent)
      List.each do |candidate| 
        if candidate.id.include?(idStudent)
          candidate.display()
        end
      end
    end
    def display()
      List.each do |candidate| candidate.display() end
    end
  end
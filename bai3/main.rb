require './AGrade'
require './BGrade'
require './CGrade'
require './CandidateManager'
studentA = AGrade.new('1', 'Quoc Vu', 'Da Nang', 'Khu vuc 3')
studentB = BGrade.new('24', 'Nguyen Quoc Vu', 'Quang Nam', 'Khu vuc 1')
studentC = CGrade.new('3', 'Van Vu', 'Da Nang', 'Khu vuc 3')
# studentA.display()
puts "===========HIEN THI THONG TIN THI SINH=================="
managerCandidate = CandidateManager.new()
managerCandidate.addCandidate(studentA)
managerCandidate.addCandidate(studentB)
managerCandidate.addCandidate(studentC)
managerCandidate.display()

puts("==================TIM KIEM THEO MA THI SINH================")
managerCandidate.Seach('1')
require './CardManager'
require './Card'
require './Student'

student1 = Student.new('A', '21', '19T2')
student2 = Student.new('B', '22', '18T2')
student3 = Student.new('C', '21', '19T2')

card = Card.new(1, student1, '20/9/2021', '20/5/2022', 'BK01')
card1 = Card.new(2, student2, '12/8/2021', '12/6/2022', 'BK02')
card2 = Card.new(3, student3, '1/3/2022', '2/9/2022', 'BK03')
managerCard = CardManager.new()
managerCard.addCard(card)
managerCard.addCard(card1)
managerCard.addCard(card2)

managerCard.display()
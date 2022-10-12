require './DocumentManager'
require './Book'
require './journal'
require './Newspaper'

def initBasicData(docManager)
  book = Book.new()
  book.initData('1', 'Sach RuBy', '4', 'Hoc Ruby nhanh chong', '130')
  journal = Journal.new()
  journal.initData('2', 'Tap chi', '31', '32', '12')
  newspaper = Newspaper.new()
  newspaper.initData('3', 'Bao An ninh', '10', '12/10/2022')
  docManager.addDocument(book)
  docManager.addDocument(journal)
  docManager.addDocument(newspaper)
  
end
def  addDocumentMethod(docManager)
  choose = 0
  loop do
    puts "1. SACH!"
    puts "2. BAO!"
    puts "3. TAP CHI!"
    puts "4. TRO VE!"
    print "Nhap lua chon cua ban: "
    choose = gets.chop()
    case choose
    when "1"
    puts("==========================================")
      puts "THEM MOI SACH"
      doc = Book.new()
      doc.create()
      docManager.addDocument(doc)
    when "2"
    puts("==========================================")
      puts "THEM MOI BAO"
      doc = Newspaper.new()
      doc.create()
      docManager.addDocument(doc)
    when "3"
    puts("==========================================")
      puts "THEM MOI TAP CHI"
      doc = Journal.new()
      doc.create()
      docManager.addDocument(doc)
    when "4"
      system ("cls")
      break
    end
  end
end
def removeDoc(docManager)
  puts("==========================================")
  print "Nhap ID muon xoa: "
  id = gets.chop()
  docManager.removeDocument(id)
end
docManager = DocumentManager.new()
initBasicData(docManager)
loop do
  puts "1.Them tai lieu(Sach, Bao, Tap chi)!"
  puts "2. Xoa Tai lieu bang ID!"
  puts "3. Hien thi thong tin tai lieu!"
  puts "4. Tim tai lieu theo loai: Sach, Bao, Tap chi!"
  puts "5. Thoat!"
  puts "6. Lam moi!"
  print "Nhap lua chon cua ban: "
  choose = gets.chop()
  case choose
  when "1"
    puts("==========================================")
    puts "THEM TAI LIEU!"
    addDocumentMethod(docManager)
  when "2"
    puts("==========================================")
    puts "XOA TAI LIEU BANG ID!"
    removeDoc(docManager)
  when "3"
    docManager.display()
  when "4"
    puts("==========================================")
    puts "Seach document with type: Book, Newspaper, Journal!"
    puts "1. Tim voi Sach"
    puts "2. Tim voi Bao"
    puts "3. Tim voi Tap chi"
    puts "Nhap lua chon: "
    typeDoc = gets.chop()
    print "Nhap ID: "
    idSearch = gets.chop()
    case typeDoc
    when "1"
      docManager.seachDoc(idSearch, 'Book')
    when "2"
      docManager.seachDoc(idSearch, 'Newspaper')
    when "3"
      docManager.seachDoc(idSearch, 'Journal')
    # else
    end
  when "5" 
    break
    gets.chop()
  when "6"
    system ("cls")
  else 
    puts "Khong tim thay lua chon cua ban!"
  end
end
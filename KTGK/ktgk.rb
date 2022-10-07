puts "Họ tên: Nguyễn Quốc Vũ"
puts "Mã sinh viên: 1911505310270"

class PTGT
    attr_accessor :id270, :hangSX270, :namSX270, :dongXe270, :giaBan270, :bienSo270, :mauXe270
    def initialize(id270, hangSX270, namSX270, dongXe270, giaBan270, bienSo270, mauXe270)
        @id270 = id270
        @hangSX270 = hangSX270
        @namSX270 = namSX270
        @dongXe270 = dongXe270
        @giaBan270 = giaBan270
        @bienSo270 = bienSo270
        @mauXe270 = mauXe270
    end
    def show
        puts "id: #{@id270}"
        puts "Hang SX: #{@hangSX270}"
        puts "Nam SX: #{@namSX270}"
        puts "Dong Xe: #{@dongXe270}"
        puts "Gia Ban: #{@giaBan270}"
        puts "Bien So: #{@bienSo270}"
        puts "Mau Xe: #{@mauXe270}"
    end
end

class Oto < PTGT
    attr_accessor :soChoNgoi270, :kieuDongCo270, :nhienLieu270, :soTuiKhi270, :ngayDangKiem270
    def initialize(id270, hangSX270, namSX270, dongXe270, giaBan270, bienSo270, mauXe270, soChoNgoi270, kieuDongCo270, nhienLieu270, soTuiKhi270, ngayDangKiem270)
        super(id270, hangSX270, namSX270, dongXe270, giaBan270, bienSo270, mauXe270)
        @soChoNgoi270 = soChoNgoi270
        @kieuDongCo270 = kieuDongCo270
        @nhienLieu270 = nhienLieu270
        @soTuiKhi270 = soTuiKhi270
        @ngayDangKiem270 = ngayDangKiem270
    end
    def show
        super
        puts "So Cho Ngoi: #{@soChoNgoi270}"
        puts "Kieu Dong Co: #{@kieuDongCo270}"
        puts "Nhien Lieu: #{@nhienLieu270}"
        puts "So Tui Khi: #{@soTuiKhi270}"
        puts "Ngay Dang Kiem: #{@ngayDangKiem270}"
    end
end

class XeMay < PTGT
    attr_accessor :congSuat270, :dungTichBinhXang270
    def initialize(id270, hangSX270, namSX270, dongXe270, giaBan270, bienSo270, mauXe270, congSuat270, dungTichBinhXang270)
        super(id270, hangSX270, namSX270, dongXe270, giaBan270, bienSo270, mauXe270)
        @congSuat270 = congSuat270
        @dungTichBinhXang270 = dungTichBinhXang270
    end
    def show
        super
        puts "Cong Suat: #{@congSuat270}"
        puts "Dung Tich Binh Xang: #{@dungTichBinhXang270}"
    end
end

class XeTai < PTGT
    attr_accessor :trongTai270
    def initialize(id270, hangSX270, namSX270, dongXe270, giaBan270, bienSo270, mauXe270, trongTai270)
        super(id270, hangSX270, namSX270, dongXe270, giaBan270, bienSo270, mauXe270)
        @trongTai270 = trongTai270
    end
    def show 
        super
        puts "Trong Tai: #{@trongTai270}"
    end
end

class QLPTGT
    attr_accessor :dsptgt270

    def initialize()
        @dsptgt270 = []
    end
    
    def themPTGT(ptgt270)
        @dsptgt270 << ptgt270
    end

    def timKiemByHangSX(keyword270)
        rs270 = @dsptgt270.select{|ptgt270| ptgt270 if ptgt270.hangSX270.upcase.include? keyword270.upcase}
        return rs270
    end

    def timKiemByMau(keyword270)
        rs270 = @dsptgt270.select{|ptgt270| ptgt270 if ptgt270.mauXe270.upcase.include? keyword270.upcase}
        return rs270
    end

    def timKiemByBienSo(keyword270)
        rs270 = @dsptgt270.select{|ptgt270| ptgt270 if ptgt270.bienSo270.upcase.include? keyword270.upcase}
        return rs270
    end

    def delete(id270)
        @dsptgt270.each do |pt|
            if pt.id270 == id270
                @dsptgt270.delete(pt)
                return true
            end
        end
        return false
    end

    def show_list
        @dsptgt270.each {|ptgt270| ptgt270.show}
    end
end

qlptgt270 = QLPTGT.new

while true
    puts "1. Them moi phuong tien giao thong."
    puts "2. Tim kiem theo hang san xuat."
    puts "3. Tim kiem theo mau xe."
    puts "4. Tim kiem theo bien so."
    puts "5. Hien thi danh sach phuong tien."
    puts "6. Xoa phuong tien giao thong."
    puts "7. Thoat."
    print "Choose your option: "
    option270 = gets.to_i
    case option270
    when 1
        puts "Nhap thong tin phuong tien:"
        print "Nhap id: "
        id270 = gets.to_i
        print "Nhap hang san xuat: "
        hangSX270 = gets
        print "Nhap nam san xuat: "
        namSX270 = gets.to_i
        print "Nhap dong xe: "
        dongXe270 = gets
        print "Nhap gia ban: "
        giaBan270 = gets
        print "Nhap mau xe: "
        mauXe270 = gets
        print "Nhap bien so: "
        bienSo270 = gets
        option_pt270 = 0
        while option_pt270<1 || option_pt270>4
            puts "1. O to."
            puts "2. Xe may."
            puts "3. Xe tai."
            print "Chon loai phuong tien: "
            option_pt270 = gets.to_i
            case option_pt270
            when 1
                print "Nhap so cho ngoi: "
                soChoNgoi270 = gets.to_i
                print "Nhap kieu dong co: "
                kieuDongCo270 = gets
                option_nhienLieu270 = 0
                while option_nhienLieu270 <1 || option_nhienLieu270 >2
                    puts "1. Xang."
                    puts "2. Dau."
                    print "Chon nhien lieu: "
                    option_nhienLieu270 = gets.to_i
                    case option_nhienLieu270
                    when 1
                        nhienLieu270 = "Xang"
                    when 2
                        nhienLieu270 = "Dau"
                    end    
                end
                print "Nhap so tui khi: "
                soTuiKhi270 = gets.to_i
                print "Nhap ngay dang kiem: "
                ngayDangKiem270 = gets
                qlptgt270.themPTGT(Oto.new(id270, hangSX270, namSX270, dongXe270, giaBan270, bienSo270, mauXe270, soChoNgoi270, kieuDongCo270, nhienLieu270, soTuiKhi270, ngayDangKiem270))
            when 2
                print "Nhap dung tich binh xang: "
                dungTichBinhXang270 = gets
                print "Nhap cong suat: "
                congSuat270 = gets
                qlptgt270.themPTGT(XeMay.new(id270, hangSX270, namSX270, dongXe270, giaBan270, bienSo270, mauXe270, congSuat270, dungTichBinhXang270))
            when 3
                print "Nhap trong tai: "
                trongTai270 = gets
                qlptgt270.themPTGT(XeTai.new(id270, hangSX270, namSX270, dongXe270, giaBan270, bienSo270, mauXe270, trongTai270))
            end
        end              
        when 2
            print "Nhap hang san xuat can tim: "
            keyword270 = gets
            rs270 = qlptgt270.timKiemByHangSX(keyword270)
            rs270.each {|pt270| pt270.show}
        when 3
            print "Nhap mau can tim: "
            keyword270 = gets
            rs270 = qlptgt270.timKiemByMau(keyword270)
            rs270.each {|pt270| pt270.show}
        when 4
            print "Nhap bien so can tim: "
            keyword270 = gets
            rs270 = qlptgt270.timKiemByBienSo(keyword270)
            rs270.each {|pt270| pt270.show}
        when 5
            puts "Danh sach phuong tien giao thong: "
            qlptgt270.show_list
        when 6
            print "Nhan id phuong tien can xoa: "
            delete270 = gets.to_i
            isDeleted270 = qlptgt270.delete(delete270)
            if (isDeleted270 == true)
                puts "Da xoa"
            else
                puts "Co loi. Xoa khong thanh cong"
            end
            # qlptgt270.show_list
        when 7
            break
    end
end
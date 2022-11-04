class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :mahs_270
      t.string :hoten_270
      t.string :lop_270
      t.string :masach_270
      t.string :tensach_270
      t.string :tentacgia_270
      t.string :soBM_270
      t.date :ngaymuon_270
      t.date :ngaytra_270
      t.text :ghichu_270

      t.timestamps
    end
  end
end

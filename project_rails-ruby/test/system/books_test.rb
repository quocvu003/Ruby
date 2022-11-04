require "application_system_test_case"

class BooksTest < ApplicationSystemTestCase
  setup do
    @book = books(:one)
  end

  test "visiting the index" do
    visit books_url
    assert_selector "h1", text: "Books"
  end

  test "should create book" do
    visit books_url
    click_on "New book"

    fill_in "Ghichu 270", with: @book.ghichu_270
    fill_in "Hoten 270", with: @book.hoten_270
    fill_in "Lop 270", with: @book.lop_270
    fill_in "Mahs 270", with: @book.mahs_270
    fill_in "Masach 270", with: @book.masach_270
    fill_in "Ngaymuon 270", with: @book.ngaymuon_270
    fill_in "Ngaytra 270", with: @book.ngaytra_270
    fill_in "Sobm 270", with: @book.soBM_270
    fill_in "Tensach 270", with: @book.tensach_270
    fill_in "Tentacgia 270", with: @book.tentacgia_270
    click_on "Create Book"

    assert_text "Book was successfully created"
    click_on "Back"
  end

  test "should update Book" do
    visit book_url(@book)
    click_on "Edit this book", match: :first

    fill_in "Ghichu 270", with: @book.ghichu_270
    fill_in "Hoten 270", with: @book.hoten_270
    fill_in "Lop 270", with: @book.lop_270
    fill_in "Mahs 270", with: @book.mahs_270
    fill_in "Masach 270", with: @book.masach_270
    fill_in "Ngaymuon 270", with: @book.ngaymuon_270
    fill_in "Ngaytra 270", with: @book.ngaytra_270
    fill_in "Sobm 270", with: @book.soBM_270
    fill_in "Tensach 270", with: @book.tensach_270
    fill_in "Tentacgia 270", with: @book.tentacgia_270
    click_on "Update Book"

    assert_text "Book was successfully updated"
    click_on "Back"
  end

  test "should destroy Book" do
    visit book_url(@book)
    click_on "Destroy this book", match: :first

    assert_text "Book was successfully destroyed"
  end
end

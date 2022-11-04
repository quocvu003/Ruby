require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get books_url
    assert_response :success
  end

  test "should get new" do
    get new_book_url
    assert_response :success
  end

  test "should create book" do
    assert_difference("Book.count") do
      post books_url, params: { book: { ghichu_270: @book.ghichu_270, hoten_270: @book.hoten_270, lop_270: @book.lop_270, mahs_270: @book.mahs_270, masach_270: @book.masach_270, ngaymuon_270: @book.ngaymuon_270, ngaytra_270: @book.ngaytra_270, soBM_270: @book.soBM_270, tensach_270: @book.tensach_270, tentacgia_270: @book.tentacgia_270 } }
    end

    assert_redirected_to book_url(Book.last)
  end

  test "should show book" do
    get book_url(@book)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_url(@book)
    assert_response :success
  end

  test "should update book" do
    patch book_url(@book), params: { book: { ghichu_270: @book.ghichu_270, hoten_270: @book.hoten_270, lop_270: @book.lop_270, mahs_270: @book.mahs_270, masach_270: @book.masach_270, ngaymuon_270: @book.ngaymuon_270, ngaytra_270: @book.ngaytra_270, soBM_270: @book.soBM_270, tensach_270: @book.tensach_270, tentacgia_270: @book.tentacgia_270 } }
    assert_redirected_to book_url(@book)
  end

  test "should destroy book" do
    assert_difference("Book.count", -1) do
      delete book_url(@book)
    end

    assert_redirected_to books_url
  end
end

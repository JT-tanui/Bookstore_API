require "test_helper"

class BookCsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_c = book_cs(:one)
  end

  test "should get index" do
    get book_cs_url, as: :json
    assert_response :success
  end

  test "should create book_c" do
    assert_difference("BookC.count") do
      post book_cs_url, params: { book_c: { author: @book_c.author, description: @book_c.description, name: @book_c.name, price: @book_c.price, tittle: @book_c.tittle } }, as: :json
    end

    assert_response :created
  end

  test "should show book_c" do
    get book_c_url(@book_c), as: :json
    assert_response :success
  end

  test "should update book_c" do
    patch book_c_url(@book_c), params: { book_c: { author: @book_c.author, description: @book_c.description, name: @book_c.name, price: @book_c.price, tittle: @book_c.tittle } }, as: :json
    assert_response :success
  end

  test "should destroy book_c" do
    assert_difference("BookC.count", -1) do
      delete book_c_url(@book_c), as: :json
    end

    assert_response :no_content
  end
end

require 'test_helper'

class TramwajsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tramwaj = tramwajs(:one)
  end

  test "should get index" do
    get tramwajs_url
    assert_response :success
  end

  test "should get new" do
    get new_tramwaj_url
    assert_response :success
  end

  test "should create tramwaj" do
    assert_difference('Tramwaj.count') do
      post tramwajs_url, params: { tramwaj: { nazwa: @tramwaj.nazwa, opis: @tramwaj.opis, rok_produkcji: @tramwaj.rok_produkcji } }
    end

    assert_redirected_to tramwaj_url(Tramwaj.last)
  end

  test "should show tramwaj" do
    get tramwaj_url(@tramwaj)
    assert_response :success
  end

  test "should get edit" do
    get edit_tramwaj_url(@tramwaj)
    assert_response :success
  end

  test "should update tramwaj" do
    patch tramwaj_url(@tramwaj), params: { tramwaj: { nazwa: @tramwaj.nazwa, opis: @tramwaj.opis, rok_produkcji: @tramwaj.rok_produkcji } }
    assert_redirected_to tramwaj_url(@tramwaj)
  end

  test "should destroy tramwaj" do
    assert_difference('Tramwaj.count', -1) do
      delete tramwaj_url(@tramwaj)
    end

    assert_redirected_to tramwajs_url
  end
end

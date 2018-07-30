require 'test_helper'

class Person2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person2 = person2s(:one)
  end

  test "should get index" do
    get person2s_url
    assert_response :success
  end

  test "should get new" do
    get new_person2_url
    assert_response :success
  end

  test "should create person2" do
    assert_difference('Person2.count') do
      post person2s_url, params: { person2: { age: @person2.age, date_of_birth: @person2.date_of_birth, first_name: @person2.first_name, last_name: @person2.last_name } }
    end

    assert_redirected_to person2_url(Person2.last)
  end

  test "should show person2" do
    get person2_url(@person2)
    assert_response :success
  end

  test "should get edit" do
    get edit_person2_url(@person2)
    assert_response :success
  end

  test "should update person2" do
    patch person2_url(@person2), params: { person2: { age: @person2.age, date_of_birth: @person2.date_of_birth, first_name: @person2.first_name, last_name: @person2.last_name } }
    assert_redirected_to person2_url(@person2)
  end

  test "should destroy person2" do
    assert_difference('Person2.count', -1) do
      delete person2_url(@person2)
    end

    assert_redirected_to person2s_url
  end
end

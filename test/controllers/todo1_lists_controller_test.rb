require 'test_helper'

class Todo1ListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @todo1_list = todo1_lists(:one)
  end

  test "should get index" do
    get todo1_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_todo1_list_url
    assert_response :success
  end

  test "should create todo1_list" do
    assert_difference('Todo1List.count') do
      post todo1_lists_url, params: { todo1_list: { description: @todo1_list.description, title: @todo1_list.title } }
    end

    assert_redirected_to todo1_list_url(Todo1List.last)
  end

  test "should show todo1_list" do
    get todo1_list_url(@todo1_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_todo1_list_url(@todo1_list)
    assert_response :success
  end

  test "should update todo1_list" do
    patch todo1_list_url(@todo1_list), params: { todo1_list: { description: @todo1_list.description, title: @todo1_list.title } }
    assert_redirected_to todo1_list_url(@todo1_list)
  end

  test "should destroy todo1_list" do
    assert_difference('Todo1List.count', -1) do
      delete todo1_list_url(@todo1_list)
    end

    assert_redirected_to todo1_lists_url
  end
end

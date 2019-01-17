require "application_system_test_case"

class Todo1ListsTest < ApplicationSystemTestCase
  setup do
    @todo1_list = todo1_lists(:one)
  end

  test "visiting the index" do
    visit todo1_lists_url
    assert_selector "h1", text: "Todo1 Lists"
  end

  test "creating a Todo1 list" do
    visit todo1_lists_url
    click_on "New Todo1 List"

    fill_in "Description", with: @todo1_list.description
    fill_in "Title", with: @todo1_list.title
    click_on "Create Todo1 list"

    assert_text "Todo1 list was successfully created"
    click_on "Back"
  end

  test "updating a Todo1 list" do
    visit todo1_lists_url
    click_on "Edit", match: :first

    fill_in "Description", with: @todo1_list.description
    fill_in "Title", with: @todo1_list.title
    click_on "Update Todo1 list"

    assert_text "Todo1 list was successfully updated"
    click_on "Back"
  end

  test "destroying a Todo1 list" do
    visit todo1_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Todo1 list was successfully destroyed"
  end
end

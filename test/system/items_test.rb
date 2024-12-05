require "application_system_test_case"

class ItemsTest < ApplicationSystemTestCase
  setup do
    @item = items(:one)
  end

  test "visiting the index" do
    visit items_url
    assert_selector "h1", text: "Items"
  end

  test "should create item" do
    visit items_url
    click_on "New item"

    fill_in "Fiel1", with: @item.fiel1
    fill_in "Field2", with: @item.field2
    fill_in "Name", with: @item.name
    check "Show modal" if @item.show_modal
    click_on "Create Item"

    assert_text "Item was successfully created"
    click_on "Back"
  end

  test "should update Item" do
    visit item_url(@item)
    click_on "Edit this item", match: :first

    fill_in "Fiel1", with: @item.fiel1
    fill_in "Field2", with: @item.field2
    fill_in "Name", with: @item.name
    check "Show modal" if @item.show_modal
    click_on "Update Item"

    assert_text "Item was successfully updated"
    click_on "Back"
  end

  test "should destroy Item" do
    visit item_url(@item)
    click_on "Destroy this item", match: :first

    assert_text "Item was successfully destroyed"
  end
end

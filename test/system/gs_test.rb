require "application_system_test_case"

class GsTest < ApplicationSystemTestCase
  setup do
    @g = gs(:one)
  end

  test "visiting the index" do
    visit gs_url
    assert_selector "h1", text: "Gs"
  end

  test "should create g" do
    visit gs_url
    click_on "New Type"

    fill_in "Miningtype", with: @g.MiningType
    fill_in "Acronym", with: @g.acronym
    fill_in "Name", with: @g.name
    click_on "Create G"

    assert_text "G was successfully created"
    click_on "Back"
  end

  test "should update G" do
    visit g_url(@g)
    click_on "Edit this g", match: :first

    fill_in "Miningtype", with: @g.MiningType
    fill_in "Acronym", with: @g.acronym
    fill_in "Name", with: @g.name
    click_on "Update G"

    assert_text "G was successfully updated"
    click_on "Back"
  end

  test "should destroy G" do
    visit g_url(@g)
    click_on "Destroy this g", match: :first

    assert_text "G was successfully destroyed"
  end
end

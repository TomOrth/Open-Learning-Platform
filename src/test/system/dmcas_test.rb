require "application_system_test_case"

class DmcasTest < ApplicationSystemTestCase
  setup do
    @dmca = dmcas(:one)
  end

  test "visiting the index" do
    visit dmcas_url
    assert_selector "h1", text: "Dmcas"
  end

  test "creating a Dmca" do
    visit dmcas_url
    click_on "New Dmca"

    fill_in "Description", with: @dmca.description
    fill_in "Lesson plan", with: @dmca.lesson_plan
    fill_in "Name", with: @dmca.name
    click_on "Create Dmca"

    assert_text "Dmca was successfully created"
    click_on "Back"
  end

  test "updating a Dmca" do
    visit dmcas_url
    click_on "Edit", match: :first

    fill_in "Description", with: @dmca.description
    fill_in "Lesson plan", with: @dmca.lesson_plan
    fill_in "Name", with: @dmca.name
    click_on "Update Dmca"

    assert_text "Dmca was successfully updated"
    click_on "Back"
  end

  test "destroying a Dmca" do
    visit dmcas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dmca was successfully destroyed"
  end
end

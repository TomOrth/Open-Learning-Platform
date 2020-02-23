require "application_system_test_case"

class LessonPlansTest < ApplicationSystemTestCase
  setup do
    @lesson_plan = lesson_plans(:one)
  end

  test "visiting the index" do
    visit lesson_plans_url
    assert_selector "h1", text: "Lesson Plans"
  end

  test "creating a Lesson plan" do
    visit lesson_plans_url
    click_on "New Lesson Plan"

    click_on "Create Lesson plan"

    assert_text "Lesson plan was successfully created"
    click_on "Back"
  end

  test "updating a Lesson plan" do
    visit lesson_plans_url
    click_on "Edit", match: :first

    click_on "Update Lesson plan"

    assert_text "Lesson plan was successfully updated"
    click_on "Back"
  end

  test "destroying a Lesson plan" do
    visit lesson_plans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lesson plan was successfully destroyed"
  end
end

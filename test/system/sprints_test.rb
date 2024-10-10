require "application_system_test_case"

class SprintsTest < ApplicationSystemTestCase
  setup do
    @sprint = sprints(:one)
  end

  test "visiting the index" do
    visit sprints_url
    assert_selector "h1", text: "Sprints"
  end

  test "should create sprint" do
    visit sprints_url
    click_on "New sprint"

    fill_in "Created at", with: @sprint.created_at
    fill_in "Duration", with: @sprint.duration
    fill_in "Iteration", with: @sprint.iteration_id
    fill_in "Project", with: @sprint.project_id
    fill_in "Start date", with: @sprint.start_date
    fill_in "Title", with: @sprint.title
    fill_in "Updated at", with: @sprint.updated_at
    click_on "Create Sprint"

    assert_text "Sprint was successfully created"
    click_on "Back"
  end

  test "should update Sprint" do
    visit sprint_url(@sprint)
    click_on "Edit this sprint", match: :first

    fill_in "Created at", with: @sprint.created_at.to_s
    fill_in "Duration", with: @sprint.duration
    fill_in "Iteration", with: @sprint.iteration_id
    fill_in "Project", with: @sprint.project_id
    fill_in "Start date", with: @sprint.start_date
    fill_in "Title", with: @sprint.title
    fill_in "Updated at", with: @sprint.updated_at.to_s
    click_on "Update Sprint"

    assert_text "Sprint was successfully updated"
    click_on "Back"
  end

  test "should destroy Sprint" do
    visit sprint_url(@sprint)
    click_on "Destroy this sprint", match: :first

    assert_text "Sprint was successfully destroyed"
  end
end

require "application_system_test_case"

class LeadsTest < ApplicationSystemTestCase
  setup do
    @lead = leads(:one)
  end

  test "visiting the index" do
    visit leads_url
    assert_selector "h1", text: "Leads"
  end

  test "should create lead" do
    visit leads_url
    click_on "New lead"

    fill_in "Attached file", with: @lead.Attached_file
    fill_in "Bussiness name", with: @lead.Bussiness_name
    fill_in "Data of the contact request", with: @lead.Data_of_the_contact_request
    fill_in "Department incharge", with: @lead.Department_incharge
    fill_in "Email", with: @lead.Email
    fill_in "Full name of the contact", with: @lead.Full_name_of_the_contact
    fill_in "Message", with: @lead.Message
    fill_in "Phone", with: @lead.Phone
    fill_in "Project description", with: @lead.Project_description
    fill_in "Project name", with: @lead.Project_name
    click_on "Create Lead"

    assert_text "Lead was successfully created"
    click_on "Back"
  end

  test "should update Lead" do
    visit lead_url(@lead)
    click_on "Edit this lead", match: :first

    fill_in "Attached file", with: @lead.Attached_file
    fill_in "Bussiness name", with: @lead.Bussiness_name
    fill_in "Data of the contact request", with: @lead.Data_of_the_contact_request
    fill_in "Department incharge", with: @lead.Department_incharge
    fill_in "Email", with: @lead.Email
    fill_in "Full name of the contact", with: @lead.Full_name_of_the_contact
    fill_in "Message", with: @lead.Message
    fill_in "Phone", with: @lead.Phone
    fill_in "Project description", with: @lead.Project_description
    fill_in "Project name", with: @lead.Project_name
    click_on "Update Lead"

    assert_text "Lead was successfully updated"
    click_on "Back"
  end

  test "should destroy Lead" do
    visit lead_url(@lead)
    click_on "Destroy this lead", match: :first

    assert_text "Lead was successfully destroyed"
  end
end

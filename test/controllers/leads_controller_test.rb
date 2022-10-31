require "test_helper"

class LeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lead = leads(:one)
  end

  test "should get index" do
    get leads_url
    assert_response :success
  end

  test "should get new" do
    get new_lead_url
    assert_response :success
  end

  test "should create lead" do
    assert_difference("Lead.count") do
      post leads_url, params: { lead: { Attached_file: @lead.Attached_file, Bussiness_name: @lead.Bussiness_name, Data_of_the_contact_request: @lead.Data_of_the_contact_request, Department_incharge: @lead.Department_incharge, Email: @lead.Email, Full_name_of_the_contact: @lead.Full_name_of_the_contact, Message: @lead.Message, Phone: @lead.Phone, Project_description: @lead.Project_description, Project_name: @lead.Project_name } }
    end

    assert_redirected_to lead_url(Lead.last)
  end

  test "should show lead" do
    get lead_url(@lead)
    assert_response :success
  end

  test "should get edit" do
    get edit_lead_url(@lead)
    assert_response :success
  end

  test "should update lead" do
    patch lead_url(@lead), params: { lead: { Attached_file: @lead.Attached_file, Bussiness_name: @lead.Bussiness_name, Data_of_the_contact_request: @lead.Data_of_the_contact_request, Department_incharge: @lead.Department_incharge, Email: @lead.Email, Full_name_of_the_contact: @lead.Full_name_of_the_contact, Message: @lead.Message, Phone: @lead.Phone, Project_description: @lead.Project_description, Project_name: @lead.Project_name } }
    assert_redirected_to lead_url(@lead)
  end

  test "should destroy lead" do
    assert_difference("Lead.count", -1) do
      delete lead_url(@lead)
    end

    assert_redirected_to leads_url
  end
end

json.extract! lead, :id, :Full_name_of_the_contact, :Bussiness_name, :Email, :Phone, :Project_name, :Project_description, :Department_incharge, :Message, :Attached_file, :Data_of_the_contact_request, :created_at, :updated_at
json.url lead_url(lead, format: :json)

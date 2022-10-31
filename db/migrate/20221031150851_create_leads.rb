class CreateLeads < ActiveRecord::Migration[7.0]
  def change
    create_table :leads do |t|
      t.string :Full_name_of_the_contact
      t.string :Bussiness_name
      t.string :Email
      t.string :Phone
      t.string :Project_name
      t.string :Project_description
      t.string :Department_incharge
      t.string :Message
      t.string :Attached_file
      t.string :Data_of_the_contact_request

      t.timestamps
    end
  end
end

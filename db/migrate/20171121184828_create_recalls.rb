# table for food recalls from api
class CreateRecalls < ActiveRecord::Migration[5.1]
  def change
    create_table :recalls do |t|
      t.string :country
      t.string :city
      t.string :reason_for_recall
      t.string :address_1
      t.string :address_2
      t.string :code_info
      t.string :product_quantity
      t.date :center_classification_date
      t.string :distribution_pattern
      t.string :state
      t.string :product_description
      t.date :report_date
      t.string :classification
      t.string :recall_number
      t.string :recalling_firm
      t.string :initial_firm_notification
      t.integer :event_id
      t.string :product_type
      t.date :termination_date
      t.date :recall_initiation_date
      t.string :postal_code
      t.string :voluntary_mandated
      t.string :status
      t.timestamps
    end
  end
end

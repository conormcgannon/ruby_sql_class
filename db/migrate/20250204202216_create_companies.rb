class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
        t.integer "company_id"
      t.timestamps
    end
  end
end

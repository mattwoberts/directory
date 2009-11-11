class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.string :name
      t.text :description
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :city
      t.string :county
      t.string :postcode
      t.string :email
      t.string :website
      t.string :phone
      t.string :fax
      t.string :lat
      t.string :long
      t.boolean :approved
      t.timestamps
    end
  end

  def self.down
    drop_table :companies
  end
end

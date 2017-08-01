class CreateBusinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
      t.column :name, :string
      t.column :address, :varchar
      t.column :phone, :string
      t.column :website, :varchar
      t.column :operational_hours, :varchar
      t.column :category_id, :integer

      t.timestamps
    end
  end
end

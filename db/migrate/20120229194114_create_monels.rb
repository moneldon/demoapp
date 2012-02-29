class CreateMonels < ActiveRecord::Migration
  def change
    create_table :monels do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end

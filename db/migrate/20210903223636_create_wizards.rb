class CreateWizards < ActiveRecord::Migration[6.1]
  def change
    create_table :wizards do |t|
      t.string :text
      t.float :stars
      t.string :source
      t.string :username

      t.timestamps
    end
  end
end

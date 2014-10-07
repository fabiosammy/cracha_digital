class CreateOldSystems < ActiveRecord::Migration
  def change
    create_table :old_systems do |t|
      t.string :username
      t.string :version

      t.timestamps
    end
  end
end

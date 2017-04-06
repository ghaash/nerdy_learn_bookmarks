class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.string :type
      t.string :created_by
      t.timestamps
    end
  end
end

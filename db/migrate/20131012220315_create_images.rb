class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :filename
      t.string :dimensions
      t.belongs_to :user_id, index: true
      t.string :tags, index: true

      t.timestamps
    end
  end
end

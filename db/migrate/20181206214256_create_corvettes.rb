class CreateCorvettes < ActiveRecord::Migration[5.2]
  def change
    create_table :corvettes do |t|
      t.string :body_style
      t.float :miles
      t.integer :year

      t.timestamps
    end
  end
end

class CreateJt2jt2s < ActiveRecord::Migration[5.2]
  def change
    create_table :jt2jt2s do |t|
      t.string :content

      t.timestamps
    end
  end
end

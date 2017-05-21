class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    t.text :content
    t.references :job, index: true, foreign_key: true

    t.timestamps
    end
  end
end

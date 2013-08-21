class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment_context
      t.references :welcome, index: true
    end
  end
end

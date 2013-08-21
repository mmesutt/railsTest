class CreateWelcomes < ActiveRecord::Migration
  def change
    create_table :welcomes do |t|
      t.string :index
      t.string :name
      t.text :context

      t.timestamps
    end
  end
end

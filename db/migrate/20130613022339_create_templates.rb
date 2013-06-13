class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :title,  :null => false, :default => ""
      t.text :body,     :null => false, :default => ""
      t.timestamps
    end
  end
end

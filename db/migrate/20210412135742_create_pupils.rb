class CreatePupils < ActiveRecord::Migration[6.0]
  def change
    create_table  :pupils do |t|
    	t.string  :klass
    	t.string  :name
    	t.boolean :food
    	t.boolean :presence

    	t.timestamps
    end
  end
end

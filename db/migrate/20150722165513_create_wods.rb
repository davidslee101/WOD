class CreateWods < ActiveRecord::Migration
  def change
    create_table :wods do |t|

    	t.string :workout

      t.timestamps
    end
  end
end

class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :original_word
      t.string :sorted_word
    end
  end
end

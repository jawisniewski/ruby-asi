class CreateTramwajs < ActiveRecord::Migration[5.0]
  def change
    create_table :tramwajs do |t|
      t.text :nazwa
      t.integer :rok_produkcji
      t.text :opis

      t.timestamps
    end
  end
end

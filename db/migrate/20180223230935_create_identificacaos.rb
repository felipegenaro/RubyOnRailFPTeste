class CreateIdentificacaos < ActiveRecord::Migration[5.1]
  def change
    create_table :identificacaos do |t|
      t.string :name
      t.string :description
      t.datetime :date
      t.string :public_id

      t.timestamps
    end
  end
end

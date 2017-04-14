class CreateMailers < ActiveRecord::Migration[5.0]
  def change
    create_table :mailers do |t|
      t.string :name
      t.string :email
      t.string :login

      t.timestamps
    end
  end
end

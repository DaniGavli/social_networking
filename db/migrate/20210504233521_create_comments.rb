class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.references :user, foreing_key: true
      t.references :post, foreing_key: true
      t.string :body
      t.timestamps
    end
  end
end

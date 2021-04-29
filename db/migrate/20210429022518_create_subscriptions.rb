class CreateSubscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :subscriptions do |t|
      #definicao das colunas na tabela, tabela join tables
      t.references :followed, foreing_key: {to_table: :users}
      t.references :followed_by, foreing_key: {to_table: :users}

      t.timestamps
      #quando foi criado - timestamp
    end
  end
end

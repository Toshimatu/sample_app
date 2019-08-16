class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps  #created_atとupdated_atという
                    #2つのマジックカラムを作成する
    end
  end
end

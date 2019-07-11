class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title #t.データ型 :カラム名
      t.string :body
      t.timestamps
    end
  end
end

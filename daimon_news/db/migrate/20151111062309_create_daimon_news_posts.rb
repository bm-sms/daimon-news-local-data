class CreateDaimonNewsPosts < ActiveRecord::Migration
  def change
    create_table :daimon_news_posts do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end

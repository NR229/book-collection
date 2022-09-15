class BookMigration < ActiveRecord::Migration[6.1]
  def change
    create_table(:books) do |t|
      t.string    :title
      t.string    :author
      t.integer   :price
      t.date      :published_date
    end
  end
end

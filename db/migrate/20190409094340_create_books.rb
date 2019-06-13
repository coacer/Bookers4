class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.string :title
      t.text :opinion
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

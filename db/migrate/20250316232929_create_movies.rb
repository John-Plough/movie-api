class CreateMovies < ActiveRecord::Migration[8.0]
  def change
    create_table :movies do |t|
      t.string :first_name
      t.string :last_name
      t.string :known_for
      t.integer :movie_id

      t.timestamps
    end
  end
end

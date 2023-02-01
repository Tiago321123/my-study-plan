class CreateProdutos < ActiveRecord::Migration[7.0]
  def change
    create_table :produto do |t|
      t.string :name
      t.string :code
      t.float :price

      t.timestamps
    end
  end
end
# rake -T lista suas tarefas


# db:migrate runs (single) migrations that have not run yet.

# db:create creates the database

# db:drop deletes the database

# db:schema:load creates tables and columns within the existing database following schema.rb. This will delete existing data.

# db:setup does db:create, db:schema:load, db:seed

# db:reset does db:drop, db:setup

# db:migrate:reset does db:drop, db:create, db:migrate
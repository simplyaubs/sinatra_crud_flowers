Sequel.migration do
  up do
    create_table(:flowers) do
      primary_key :id
      String :name, :null=>false
      String :color, :null=>false
    end
  end

  down do
    drop_table(:flowers)
  end
end
class ChangeActorsAgeToI < ActiveRecord::Migration[7.0]
  # change_column won't work with change method
  # use up and down methods insted
  
  # def change
  #   change_column :actors, :age, :integer
  # end

  # using: needed when change to integer, boolean, date etc
  def up
    change_column :actors, :age, :integer, using: "age::integer"
  end

  def down
    change_column :actors, :age, :string, using: "age::string"
  end
end

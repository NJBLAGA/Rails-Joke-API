class AddUserToJokes < ActiveRecord::Migration[6.0]
  def change
    add_reference :jokes, :user, null: false, foreign_key: true
  end
end

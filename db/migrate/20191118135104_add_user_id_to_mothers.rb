class AddUserIdToMothers < ActiveRecord::Migration[5.2]
  def change
    add_reference :mothers, :user, foreign_key: true
  end
end

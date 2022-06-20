class AddUserReferenceToPosts < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :user, null: true, foreign_key: true
    Post.update_all(user_id: 1)
  end
end

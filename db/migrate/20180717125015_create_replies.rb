class CreateReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :replies do |t|
      t.string :commenter
      t.text :body
      t.bigint :comment_id
      t.references :blogger, foreign_key: true

      t.timestamps
    end
  end
end

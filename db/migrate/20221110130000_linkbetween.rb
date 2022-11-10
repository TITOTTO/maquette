class Linkbetween < ActiveRecord::Migration[7.0]
  def change
    add_reference :articles, :user, foreign_key: true
    add_reference :comments, :article, foreign_key: true
    add_reference :rates, :article, foreign_key: true
    add_reference :comments, :user, foreign_key: true
    add_reference :rates, :user, foreign_key: true
  end
end

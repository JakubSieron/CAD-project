class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :answer
      t.references :holiday, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end

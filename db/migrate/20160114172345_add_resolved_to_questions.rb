class AddResolvedToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :resolved, :boolean
  end
end

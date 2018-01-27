class CreateKnowledgeDomains < ActiveRecord::Migration[5.1]
  def change
    create_table :knowledge_domains do |t|
      t.string :name
      t.text :description
      t.string :score_img

      t.timestamps
    end
  end
end

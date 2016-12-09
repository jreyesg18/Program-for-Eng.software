class AddAttachmentConcursePdfToConcurses < ActiveRecord::Migration
  def self.up
    change_table :concurses do |t|
      t.attachment :concurse_pdf
    end
  end

  def self.down
    remove_attachment :concurses, :concurse_pdf
  end
end

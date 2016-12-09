class AddAttachmentConcurseImgToConcurses < ActiveRecord::Migration
  def self.up
    change_table :concurses do |t|
      t.attachment :concurse_img
    end
  end

  def self.down
    remove_attachment :concurses, :concurse_img
  end
end

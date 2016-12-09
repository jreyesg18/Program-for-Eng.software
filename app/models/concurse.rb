class Concurse < ActiveRecord::Base
  belongs_to :category
  belongs_to :company

  has_attached_file :concurse_img, :styles =>{ :concurse_index=> "250x350>", :concurse_show =>"325x475>"}, :default_url =>"/images/:style/missing.png"
  validates_attachment_content_type :concurse_img, :content_type => /\Aimage\/.*\Z/

  has_attached_file :concurse_pdf, styles: {thumbnail: "60x60#"}
  validates_attachment_content_type :concurse_pdf, content_type: ["application/pdf" ]


end

class Photo < ApplicationRecord
	has_attached_file :image
	validates_attachment :image, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
	has_attached_file :image, styles: { thumb: ["6\4x64#", :jpg] }
end

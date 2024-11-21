# == Schema Information
#
# Table name: headers
#
#  id         :bigint           not null, primary key
#  name       :string
#  path       :string
#  position   :integer
#  component  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Header < ApplicationRecord
	validates :name, :path, :component, :position, presence: true 
	validates :position, numericality: {only_integer: true}
  
	# Ordenar por posición de forma predeterminada
	default_scope { order(:position) }

	before_save :strip_whitespace

	private
		def strip_whitespace
			self.name = name.strip
			self.path = name.strip
			self.component = name.strip
		end
end

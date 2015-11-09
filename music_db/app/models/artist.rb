# Lays out the Artist relationships
class Artist < ActiveRecord::Base
  has_many :songs
  belongs_to :genre

  validates :name, uniqueness: true, length: { minimum: 2 }
  validates :genre_id, :name, presence: true
end

# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  name       :string
#  genre_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_artists_on_genre_id  (genre_id)
#

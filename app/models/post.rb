class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :area
  has_many :comments

  validates :image, presence: true
  validates :title, presence: true
  validates :content, presence: true
  validates :area_id, numericality: { other_than: 1 }

end

class Portfolio < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

  #after Portfolio.new is called
  after_initialize :set_defaults

  #creating custom scopes

  def self.angular
    where(subtitle: "Angular")
  end

  # OR

  scope :ruby_on_rails, -> { where(subtitle: "Ruby on Rails") }


  def set_defaults
    self.main_image ||= Placeholder.image_generator(height:"600", width: "400")
    self.thumb_image ||= Placeholder.image_generator(height:"350", width: "200")
  end
end

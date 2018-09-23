class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  #creating custom scopes

  def self.angular
    where(subtitle: "Angular")
  end

  # OR

  scope :ruby_on_rails, -> { where(subtitle: "Ruby on Rails") }

end

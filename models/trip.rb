class Trip
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :long_title, type: String
  field :description, type: String
  field :seo_description, type: String
  field :category, type: Array
  field :rating, type: String
  field :information, type: String
  field :feedback, type: String
  field :country, type: String
  field, :status, type: Boolean, default: false
  
  validates :title, presence: true, uniqueness: true


  index({external_id: 1}, {unique: true})

end

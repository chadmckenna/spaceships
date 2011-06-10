class Spaceship < ActiveRecord::Base
  attr_accessible :name, :ship_class, :purpose, :weapons, :number_of_crew_members, :flight_plans, :photo
  
  validates_presence_of :name, :photo
  
  has_attached_file :photo, 
                    :styles => {
                      :mini => "40x40>",
                      :thumb => "200x200>",
                      :medium => "600x600>"
                    },
                    :url => "/assets/:class/:attachment/:id/:style.:extension",
                    :path => "#{RAILS_ROOT}/public/assets/:class/:attachment/:id/:style.:extension",
                    :default_url => "/images/default_spaceship_:style.jpg",
                    :storage => :s3,
                    :s3_credentials => "#{RAILS_ROOT}/config/s3.yml"
                    
  validates_attachment_presence :photo
  
end

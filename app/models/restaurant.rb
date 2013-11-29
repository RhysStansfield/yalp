class Restaurant < ActiveRecord::Base
  has_many :reviews#, dependant: :destroy
end

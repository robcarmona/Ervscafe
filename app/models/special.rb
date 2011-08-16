class Special < ActiveRecord::Base
   scope :sorted, order("specials.id ASC")
end

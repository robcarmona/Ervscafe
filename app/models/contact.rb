class Contact < ActiveRecord::Base
  validates_presence_of :content, :name, :email, :phone
end

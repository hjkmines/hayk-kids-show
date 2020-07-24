class Kid < ApplicationRecord

  validates :age, inclusion: {in: 7..14}, precense: true, numericality: {only_integer: true}  
  validates :username, uniqueness: true, length: {in: 7..25}, precense: true  

end

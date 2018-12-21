class Dog < ApplicationRecord
  has_many :employees

  def self.most_loved
    Dog.all.sort_by {|d| d.employees.count}.reverse
  end
end

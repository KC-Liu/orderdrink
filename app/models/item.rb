# encoding: utf-8
class Item < ActiveRecord::Base
  belongs_to :activity
  validates_presence_of  :name
  validates_numericality_of :price , :greater_than_or_equal_to  => 0


  def absolute_catagory 
     [name,size,ice,sugar] 
  end  


end

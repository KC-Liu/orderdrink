# encoding: utf-8
module ActivitiesHelper

  def ice_sugar_tag(ice,sugar)
  	return "" if sugar.blank? && ice.blank?
  	tag = ""
  	tag = "#{tag}#{sugar}糖 " if sugar.present?
  	tag = "#{tag}#{ice}冰" if ice.present?
  	return tag
  end	
  
end

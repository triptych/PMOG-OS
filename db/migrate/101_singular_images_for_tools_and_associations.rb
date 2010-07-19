# Image names should be singular
class SingularImagesForToolsAndAssociations < ActiveRecord::Migration
  def self.up
    Tool.find(:all).each do |tool|
      tool.small_image = "/images/shared/tools/small/" + tool.name.downcase.singularize + ".jpg"
      tool.medium_image = "/images/shared/tools/medium/" + tool.name.downcase.singularize + ".jpg"
      tool.large_image = "/images/shared/tools/large/" + tool.name.downcase.singularize + ".png"
      tool.icon_image = "/images/shared/tools/icon/" + tool.name.downcase.singularize + ".jpg"
      tool.save
    end
    
    PmogClass.find(:all).each do |pmog_class|
      pmog_class.small_image = "/images/shared/associations/small/" + pmog_class.name.downcase.singularize + ".jpg"
      pmog_class.medium_image = "/images/shared/associations/medium/" + pmog_class.name.downcase.singularize + ".jpg"
      pmog_class.large_image = "/images/shared/associations/large/" + pmog_class.name.downcase.singularize + ".png"
      pmog_class.icon_image = "/images/shared/associations/icon/" + pmog_class.name.downcase.singularize + ".jpg"
      pmog_class.save
    end

  end

  def self.down
    Tool.find(:all).each do |tool|
      tool.small_image = "/images/shared/tools/small/" + tool.name.capitalize.pluralize + ".jpg"
      tool.medium_image = "/images/shared/tools/medium/" + tool.name.capitalize.pluralize + ".jpg"
      tool.large_image = "/images/shared/tools/large/" + tool.name.capitalize.pluralize + ".png"
      tool.icon_image = "/images/shared/tools/icon/" + tool.name.capitalize.pluralize + ".jpg"
      tool.save
    end
    
    PmogClass.find(:all).each do |pmog_class|
      pmog_class.small_image = "/images/shared/associations/small/" + pmog_class.name.capitalize.pluralize + ".jpg"
      pmog_class.medium_image = "/images/shared/associations/medium/" + pmog_class.name.capitalize.pluralize + ".jpg"
      pmog_class.large_image = "/images/shared/associations/large/" + pmog_class.name.capitalize.pluralize + ".png"
      pmog_class.icon_image = "/images/shared/associations/icon/" + pmog_class.name.capitalize.pluralize + ".jpg"
      pmog_class.save
    end
  end
end

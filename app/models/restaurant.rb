class Restaurant < ActiveRecord::Base
  has_and_belongs_to_many :tags, join_table: :restaurants_tags
end

class Link < ActiveRecord::Base
  attr_accessible :title, :body, :url

  belongs_to :user
end

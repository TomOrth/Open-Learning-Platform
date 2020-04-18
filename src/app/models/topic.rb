# Project Name: Open Learning Platform
# Descriptin: Platform for K-12 educators to upload lesson plans
# Filename: topic.rb
# Description: A model representing the topic table
# Last date modified: 4/18/2020

# This class is for the topics a lesson plan can be tagged as
# Relevant schema:
#   name: string 
class Topic < ApplicationRecord
  def self.names
    Topic.all.map{|topic| topic.name}
  end
end

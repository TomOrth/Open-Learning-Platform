# Project Name: Open Learning Platform
# Descriptin: Platform for K-12 educators to upload lesson plans
# Filename: lesson_plan.rb
# Description: A model of the lesson plan table
# Last date modified: 3/26/2020

# This represents the lesson plan for the educators
# Relevant schema:
# name: string
# description: string
# topic: string
# contents: ActiveStorage::Attached::Many 
class LessonPlan < ApplicationRecord
    has_many_attached :contents
end

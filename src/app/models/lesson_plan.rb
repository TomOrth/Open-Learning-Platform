# This represents the lesson plan for the educators
# Relevant schema:
# name: string
# description: string
# topic: string
# contents: ActiveStorage::Attached::Many 
class LessonPlan < ApplicationRecord
    has_many_attached :contents
end

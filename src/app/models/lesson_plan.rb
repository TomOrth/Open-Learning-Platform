class LessonPlan < ApplicationRecord
    has_many_attached :contents
end

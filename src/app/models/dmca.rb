# Project Name: Open Learning Platform
# Descriptin: Platform for K-12 educators to upload lesson plans
# Filename: dmca.rb
# Description: A model to represent the DMCA table of postgres
# Last date modified: 3/26/2020

# This represents a DMCA takedown request
# Relevant schmea:
#   title: string
#   description: string
#   lesson_plan_id: integer
class Dmca < ApplicationRecord
end

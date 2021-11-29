# frozen_string_literal: true
# This is the Application Record Base class

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

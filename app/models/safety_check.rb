class SafetyCheck < ApplicationRecord
	belongs_to :bike

	 def default_values
    self.alert ||= 'Have you performed a safety check today?'
  end
end

class BoardCase
  attr_accessor :case_id, :case_state

  def initialize(case_id, case_state)
    @case_id = case_id
    @case_state = case_state #should receive a "string"
  end
end
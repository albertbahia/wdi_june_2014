class Board

  attr_reader(:space1_1, :space1_2, :space1_3, :space2_1, :space2_2, :space2_3, :space3_1, :space3_2, :space3_3)
  def initialize(start_space1_1, start_space1_2, start_space1_3, start_space2_1, start_space2_2, start_space2_3, start_space3_1, start_space3_2, start_space3_3)
    @space1_1 = start_value1_1
    @space1_2 = start_value1_2
    @space1_3 = start_value1_3
    @space2_1 = start_value2_1
    @space2_2 = start_value2_2
    @space2_3 = start_value2_3
    @space3_1 = start_value3_1
    @space3_2 = start_value3_2
    @space3_3 = start_value3_3
  end

  def mark_space(space_id)
  end
end

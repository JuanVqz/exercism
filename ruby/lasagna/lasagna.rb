# frozen_string_literal: true

# Cooking a lasagna
class Lasagna
  EXPECTED_MINUTES_IN_OVEN = 40
  MINUTES_PER_LAYER = 2

  def remaining_minutes_in_oven(actual_minutes_in_oven)
    EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
  end

  def preparation_time_in_minutes(layers)
    layers * MINUTES_PER_LAYER
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    preparation_time_in_minutes(number_of_layers) + actual_minutes_in_oven
  end
end

# Uncomment the following code to confirm the README examples work:
# lasagna = Lasagna.new
# p Lasagna::EXPECTED_MINUTES_IN_OVEN
# p lasagna.remaining_minutes_in_oven(30)
# p lasagna.preparation_time_in_minutes(2)
# p lasagna.total_time_in_minutes(number_of_layers: 3, actual_minutes_in_oven: 20)

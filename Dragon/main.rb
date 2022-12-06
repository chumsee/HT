# frozen_string_literal: true

require_relative 'head'

left_head = Head.new
middle_head = Head.new
right_head = Head.new

left_head.look(:b, 100)
left_head.look(:l, 100)
left_head.look(:f, 100)

middle_head.look(:r, 80)
middle_head.look(:f, 20)
middle_head.look(:l, 80)
middle_head.look(:r, 80)
middle_head.look(:l, 80)
middle_head.look(:f, 80)

right_head.look(:b, 50)
right_head.look(:f, 50)
right_head.look(:l, 150)
right_head.look(:r, 50)
right_head.look(:b, 50)
right_head.look(:f, 50)

looking_in_one_direction_time = 0
(1..([left_head.minutes, right_head.minutes, middle_head.minutes].min)).each do |i|
   looking_in_one_direction_time += 1 if left_head.direction_by_minute(i) == middle_head.direction_by_minute(i) && middle_head.direction_by_minute(i) == right_head.direction_by_minute(i)
end

p looking_in_one_direction_time

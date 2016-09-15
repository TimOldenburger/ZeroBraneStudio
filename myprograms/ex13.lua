require 'robot_arm'
robot_arm:load_level("exercise 3")

robot_arm.speed = 0.95
x = 2

for i = 1, 4 do
  robot_arm:grab()
  for i = 1, (x) do
    robot_arm:move_right()
  end
  robot_arm:drop()
  for i = 1, (x) do
    robot_arm:move_left()
  end
  x = (x) + 2
end
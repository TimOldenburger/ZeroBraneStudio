require 'robot_arm'
robot_arm:load_level("exercise 6")

robot_arm.speed = 0.95
x = 4

for i = 1, 4 do
  robot_arm:move_right()
end
for i = 1, 4 do
  robot_arm:grab()
  result = robot_arm:scan()
  if result == 'red' then
    for i = 1, (x) do
      robot_arm:move_left()
    end
    robot_arm:drop()
    for i = 1, (x) do
      robot_arm:move_right()
    end
  elseif result == 'blue' then
    for i = 2, (x) do
      robot_arm:move_left()
    end
    robot_arm:drop()
    for i = 2, (x) do
      robot_arm:move_right()
    end
  elseif result == 'white' then
    for i = 3, (x) do
      robot_arm:move_left()
    end
    robot_arm:drop()
    for i = 3, (x) do
      robot_arm:move_right()
    end
  elseif result == 'green' then
    for i = 4, (x) do
      robot_arm:move_left()
    end
    robot_arm:drop()
    for i = 4, (x) do
      robot_arm:move_right()
    end
  end
  x = (x) + 1
  robot_arm:move_right()
end
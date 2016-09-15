require 'robot_arm'
robot_arm:load_level("exercise 9")

robot_arm.speed = 0.9999
x = 4

robot_arm:grab()
for i = 1, 4 do
  robot_arm:move_right()
end
robot_arm:drop()
for i = 2, 4 do
  robot_arm:move_left()
end
for i = 1, 2 do
  robot_arm:grab()
  for i = 2, 5 do
    robot_arm:move_right()
  end
  robot_arm:drop()
  for i = 2, 5 do
    robot_arm:move_left()
  end
end
robot_arm:move_right()
for i = 1, 3 do
  robot_arm:grab()
    for i = 3, 6 do
    robot_arm:move_right()
  end
  robot_arm:drop()
  for i = 3, 6 do
    robot_arm:move_left()
  end
end
robot_arm:move_right()
for i = 1, 3 do
  robot_arm:grab()
  for i = (x), 4 do
    robot_arm:move_left()
  end
  robot_arm:drop()
  for i = (x), 4 do
    robot_arm:move_right()
  end
  x = (x) - 1
end
for i = 1, 3 do
  robot_arm:move_right()
end
for i = 1, 3 do
  robot_arm:grab()
  for i = (x), 6 do
    robot_arm:move_left()
  end
  robot_arm:drop()
  for i = (x), 6 do
    robot_arm:move_right()
  end
  x = (x) + 1
end
robot_arm:move_left()
x = 0
for i = 1, 2 do
  robot_arm:grab()
  for i = (x), 3 do
    robot_arm:move_left()
  end
  robot_arm:drop()
  for i = (x), 3 do
    robot_arm:move_right()
  end
  x = (x) - 1
end
robot_arm:move_left()
robot_arm:grab()
for i = 1, 4 do
robot_arm:move_left()
end
robot_arm:drop()
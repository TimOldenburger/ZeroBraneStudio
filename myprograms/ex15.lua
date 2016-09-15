require 'robot_arm'
robot_arm:load_level("exercise 11")

robot_arm.speed = 0.95
r = 0
g = 0
b = 0
w = 0
x = 9

for i = 1, 9 do
  robot_arm:move_right()
  robot_arm:grab()
  result = robot_arm:scan()
  if result == 'red' then
    r = (r) + 1
  elseif result == 'green' then
    g = (g) + 1
  elseif result == 'blue' then
    b = (b) + 1
  elseif result == 'white' then
    w = (w) + 1
  end
  robot_arm:drop()
end
print (r, g, b, w)
if 'r' > 'g' or 'b' or 'w' then
  for i = 1, 9 do
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
    else
      robot_arm:drop()
    end
    x = (x) - 1
    robot_arm:move_left()
  end
elseif 'g' > 'r' or 'b' or 'w' then
  for i = 1, 9 do
    robot_arm:grab()
    result = robot_arm:scan()
    if result == 'green' then
      for i = 1, (x) do
        robot_arm:move_left()
      end
      robot_arm:drop()
      for i = 1, (x) do
        robot_arm:move_right()
      end
    else
      robot_arm:drop()
    end
    x = (x) - 1
    robot_arm:move_left()
  end
elseif 'b' > 'r' or 'g' or 'w' then
  for i = 1, 9 do
    robot_arm:grab()
    result = robot_arm:scan()
    if result == 'blue' then
      for i = 1, (x) do
        robot_arm:move_left()
      end
      robot_arm:drop()
      for i = 1, (x) do
        robot_arm:move_right()
      end
    else
      robot_arm:drop()
    end
    x = (x) - 1
    robot_arm:move_left()
  end
elseif 'w' > 'r' or 'g' or 'b' then
  for i = 1, 9 do
    robot_arm:grab()
    result = robot_arm:scan()
    if result == 'white' then
      for i = 1, (x) do
        robot_arm:move_left()
      end
      robot_arm:drop()
      for i = 1, (x) do
        robot_arm:move_right()
      end
    else
      robot_arm:drop()
    end
    x = (x) - 1
    robot_arm:move_left()
  end
end
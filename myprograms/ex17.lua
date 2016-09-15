require 'robot_arm'
robot_arm:random_level(4)

robot_arm.speed = 0.95
x = true
a = 0
b = 0

--a naar c--
while (x) do
  robot_arm:grab()
  result = robot_arm:scan()
  if result ~= nil then
    robot_arm:move_right()
    robot_arm:move_right()
    robot_arm:drop()
    robot_arm:move_left()
    robot_arm:move_left()
    a = (a) + 1
  else
    x = false
  end
end

--d naar a--*
for i = 1, 3 do
  robot_arm:move_right()
end
x = true
while (x) do
  robot_arm:grab()
  result = robot_arm:scan()
  if result ~= nil then
    for i = 1, 3 do
      robot_arm:move_left()
    end
    robot_arm:drop()
    for i = 1, 3 do
      robot_arm:move_right()
    end
  else
    x = false
  end
end

--c naar d--
x = true
for i = 1, (a) do
  robot_arm:move_left()
  robot_arm:grab()
  robot_arm:move_right()
  robot_arm:drop()
end

--b naar d--
for i = 1, 2 do
  robot_arm:move_left()
end
while (x) do
  robot_arm:grab()
  result = robot_arm:scan()
  if result ~= nil then
    robot_arm:move_right()
    robot_arm:move_right()
    robot_arm:drop()
    robot_arm:move_left()
    robot_arm:move_left()
    b = (b) + 1
  else
    x = false
  end
end

--c naar b--*
x = true
while (x) do
  robot_arm:move_right()
  robot_arm:grab()
  result = robot_arm:scan()
  if result ~= nil then
    robot_arm:move_left()
    robot_arm:drop()
  else
    x = false
  end
end

x = true
for i = 1, (b) do
  robot_arm:move_right()
  robot_arm:grab()
  robot_arm:move_left()
  robot_arm:drop()
end
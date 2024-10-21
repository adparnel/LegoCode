brick = ConnectBrick('TEN');
done = 0;

while done == 0
    distance = brick.UltrasonicDist(2);
    while brick.TouchPressed(1) == 0
        brick.MoveMotor('B', 40);
        brick.MoveMotor('C', 40);
    end
    if brick.TouchPressed(1) == 1
        brick.StopAllMotors('Brake');
        brick.MoveMotor('B', -30);
        brick.MoveMotor('C', -30);
        pause(1);
        if distance > 50
            brick.MoveMotor('B', -10);
            brick.MoveMotor('C', 10);
            pause(3.7);
        else 
            brick.MoveMotor('B', 10);
            brick.MoveMotor('C', -10);
            pause(3.7);
        end


        
    end 

end 
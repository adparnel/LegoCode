brick = ConnectBrick('ANT');
done = 0;
% brick.setColorMode(2,1); % port 2, ambient light mode
% Color sensor must be connected t port 2, ultrasonic to D, 
% touch sensor to A, 
% Motors are B and C.
while done == 0
    % color = brick.ColorCode(2);
    distance = brick.UltrasonicDist("4");
    while brick.TouchPressed("3") == 0
        brick.MoveMotor('B', 40);
        brick.MoveMotor('C', 40);
        %if color == 5
            % add code for red
        %end
        %if color == 3
            % add code for green
        %end
        %if color == 2
            % add cpde for blue
        %end
        %if color == 4
            % add code for yellow
        %end
    end
    if brick.TouchPressed("A") == 1
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

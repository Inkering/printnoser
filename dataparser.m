function output = dataparser(timetable)
a = timetable2table(Acceleration);
accelData = [a.X a.Y a.Z]';

output = accelData;
end
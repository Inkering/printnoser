function output = dataparser(timetable)
a = timetable2table(timetable);
accelData = [a.X a.Y a.Z]';

output = accelData;
end
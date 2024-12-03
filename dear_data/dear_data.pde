String[] wakeup = {                                 "10:00", "11:43", "11:21",
                   "9:15", "9:34", "11:02", "9:47", "11:55", "11:02", "12:05", // week starting 4th nov
                   "7:40", "8:01", "11:12", "7:57", "10:05", "10:12", "9:15",  // 11 nov
                   "7:45", "7:05", "12:00", "8:05", "7:45", "11:50", "10:02",  // 18 nov
                   "8:02", "8:01", "10:05", "8:05", "8:06", "10:34", "9:23",   // 25 nov
                   "7:40"                                                      // 2 dec
                 };
int[] hours = {               9, 10, 9,
               10, 11, 8, 9, 8, 11, 11,
               8, 11, 11, 10, 13, 11, 7,
               9, 10, 8, 6, 9, 8, 8,
               8, 7, 7, 9, 9, 6, 7,
               7
             };      


int x_spacing = 80;
int y_spacing = 80;


size(800,600);
fill(0);
text("Darker shades = later weeks\nCircle size = hours slept",620, 100);
text("               Day:\nTime:", 0, 10);
String[] days = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};
String[] times = {"7:00", "8:00", "9:00", "10:00", "11:00", "12:00"};
line(60, 0, 60, 600);
line(0, 30, 600, 30);
textAlign(CENTER);  
for (int day = 0; day < 7 ; day++) {
  text(days[day], (1+day)*x_spacing+20, 10);
}
textAlign(LEFT, CENTER);  
for (int time = 0; time < times.length ; time++) {
  text(times[time], 3, (1+time)*y_spacing);
}


for (Integer week = 0; week < wakeup.length/7 ; week++) {
  fill(255-(week *40));
  for (Integer day = 0; day < 7 ; day++) {
    Float time = Float.valueOf(wakeup[week*7+day].split(":")[0]) + Float.valueOf(wakeup[week*7+day].split(":")[1])/60.0;
    println(time);
    circle(20+(day+1)*x_spacing, y_spacing*(time-7+1), hours[week*7+day]*2.5); 
  
  }
}

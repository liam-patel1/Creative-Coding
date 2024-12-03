String[] times = {"7:33", "7:34", "10:02", "7:47", "7:55"};
size(500,500);
text("    Day\nTime", 10, 10);
for (Integer x = 0; x < times.length ; x++) {
  text("Day " + x.toString(), 50+x*40, 10);
  stroke(0,0,255);
  int time = Integer.valueOf(times[x].split(":")[0]) + Integer.valueOf(times[x].split(":")[1])/60;
  print(time);
  circle(50+x*40, time*20, 20);
}

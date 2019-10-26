
$fn=128;

;height = 152;
height=50;
tcount = 35;
tsize = 46.5;
icount = 27;
isize = 38;
roff=1.5;

difference(){
   cylinder(r=50,height);
   translate([0,0,-.1]) cylinder(r=42,height+1);
   for (i = [0:tcount-1]) {
       translate([sin(360*i/tcount)*tsize, cos(360*i/tcount)*tsize, -.1 ])
       cylinder(h = height+1, r=4);
       }
   }
   difference(){
   cylinder(r=42,height);
   translate([0,0,-.1]) cylinder(r=isize-3,height+1);
   for (i = [0:icount-1]) {
       translate([sin(360*i/icount+roff)*isize, cos(360*i/icount+roff)*isize, -.1 ])
       cylinder(h = height+1, r=4);
       }
   }
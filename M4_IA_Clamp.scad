//   Spindle Lock


$fn=100;

module 3mf(){
    import("../3mf/ClampM4.3mf");
}


color("green")
3mf();
fillMain();
module fillMain(){
    difference(){
        translate([0,0,0])
        color("blue")
        cylinder(11,d=124,center=true);
        translate([0,0,0])
        color("red")
        cylinder(13,d=69,center=true);

        translate([65.5,-65.5,0])
        cube([100,100,13],center=true);

        rotate([0,0,45])
        translate([0,-40,0])
        cube([4,50,20],center=true);
        

        translate([-34.7,0,0])
        cylinder(20,d=25,center=true);
    }

    fillarm();
    rotate([0,0,90])
    fillarm();
    rotate([0,0,180])
    fillarm();
    rotate([0,0,270])
    fillarm();
}
module fillarm(){
    difference(){
        translate([75,0,0])
        cube([30,30,11],center=true);
        color("red"){
        translate([86,0,0])
        cylinder(13,d=7,center=true);
        translate([81,32,0])
        cylinder(13,d=45,center=true);
        translate([81,-32,0])
        cylinder(13,d=45,center=true);
        translate([99,0,0])
        cylinder(h=13,d=26,center=true);    
        }
    }
    
}
    
module plug(){
    difference(){
        taper();
        chop();
    }
    color("green")
    translate([1.99,0,3.0])
    cube([4,5,20],center=true);
    translate([-8,0,-5.5])
    ButtonPush();

}
module chop(){
    translate([15,0,2.5])
    cube([30,30,40],center=true);
}
module taper(){
    translate([0,0,.5])
    cylinder(h=9,d1=24,d2=24,center=true);
    translate([0,0,7])
    cylinder(h=4,d1=24,d2=20,center=true);
}
module ButtonPush(){
    difference(){
        Support();
        translate([-84,0, 10])
        cube([85,155,25],center=true);
    }
}
module Support(){
    difference(){
    color([.2,.6,.4],.3)
        translate([-54,0,0])
            cylinder(3,d=128,center=true);
        translate([-54.5,0,0])
        color("cyan")
            cylinder(h=7,d=101,center=true);
    }
}


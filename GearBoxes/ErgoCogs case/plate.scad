plate_h=1.55;
board_h=1.5;
bottom_h=2.05;
bottom_space=3;
side_h=8.5;

tolerance=0.2;
screw_d=2.3;


actual_hole_d=6;
jack_d=7;

fix_scale=1.0075; // The boards are a bit bigger? My priter uncalibrated ?

$fn=30;

module tray(plate_h=plate_h,bottom_h=bottom_h,side_h=side_h,tolerance=tolerance,outline_file="outer_outline.dxf",sides=true,bottom_space=bottom_space) {

  in_offset = sides ? tolerance : bottom_h ;
  difference(){
    linear_extrude(bottom_h+side_h+plate_h)
      offset(r=bottom_h)
        import(outline_file);
    translate([0,0,bottom_h])
      linear_extrude(bottom_h+side_h+plate_h)
        offset(r=in_offset)
          import(outline_file);    
  }
}

module bottom(plate_h=plate_h,bottom_h=bottom_h,side_h=side_h,tolerance=tolerance,outline_file="outer_outline.dxf",holes_file="mount_holes.dxf",sides=true,bottom_space=bottom_space) {
  difference(){
    union(){
      tray(plate_h,bottom_h=bottom_h,side_h=side_h,tolerance=tolerance,outline_file=outline_file,sides=sides,bottom_space=bottom_space);
      linear_extrude(bottom_h+side_h)
        offset(delta=-tolerance/2)
          import(holes_file); // "columns"
      linear_extrude(bottom_h+bottom_space)
        offset(delta=1)
          import(holes_file); // plate rests
    }
    linear_extrude(bottom_h+side_h+1)
      offset(delta=-(actual_hole_d-screw_d)/2)
        import(holes_file); // screw holes
    linear_extrude(bottom_h)
      offset(delta=-0.4)
        import(holes_file); // nut hole
  }
}

module brain_translate(){
  translate([-88.79,-5.7,0])
    children();
}

module brain_bottom(plate_h=plate_h,bottom_h=bottom_h,side_h=side_h,tolerance=tolerance,outline_file="brain_outline.dxf",holes_file="brain_holes.dxf",sides=true,bottom_space=bottom_space){
  brain_translate()
    bottom(plate_h=plate_h,bottom_h=bottom_h,side_h=side_h,tolerance=tolerance,outline_file=outline_file,holes_file=holes_file,sides=sides,bottom_space=bottom_space);
}

module full_bottom(plate_h=plate_h,bottom_h=bottom_h,side_h=side_h,tolerance=tolerance){
  union(){
    difference(){
      bottom(plate_h=plate_h,bottom_h=bottom_h,side_h=side_h,tolerance=tolerance);
      brain_translate()
        linear_extrude(side_h+2*bottom_h+bottom_space)
          import("brain_bigger_outline.dxf");
    }
  }
}

module plate(plate_h=plate_h) {
  linear_extrude(plate_h)
    import("plate_outline.dxf");
}

module cutouts(plate_h=plate_h) {
linear_extrude(plate_h)
  union(){
    import("plate_cutouts.dxf");  
    // For M3 - check if screw head fits!
    //offset(r=-1.45)
    // For M2.5
    offset(r=-1.67)
    // For M2
    //offset(r=-1.86)
      import("mount_holes.dxf");
  }
}

module plate_with_cutouts(plate_h=plate_h){
  difference(){
    plate(plate_h);
    cutouts(plate_h);
  }
}

module plate_sample(plate_h=plate_h){
  intersection(){
    union(){
      translate([40,-195,0])
        rotate([0,0,25])
          cube([65,42,plate_h]);
      translate([81,-169.5,0])
        cube([130,40,plate_h]);
    }

    plate_with_cutouts(plate_h);
  }
}

module brain_bottom_cartridge(usb=false) {
  slider_w=2;
  slider_l=9;
  slider_gap=0.1;
  difference(){
    union(){
      intersection(){
        brain_bottom();
        brain_translate()
          linear_extrude(side_h+2*bottom_h+bottom_space)
            import("brain_bigger_outline.dxf");
      }
      translate([60,-49-slider_w,bottom_h])
        cube([slider_l,slider_w,bottom_space-tolerance]); // top slider rail
      translate([57,-116-slider_w,bottom_h])
        cube([slider_l,slider_w+6,bottom_space-tolerance]); // middle slider rail
      translate([23,-135.3-slider_w,bottom_h])
        cube([slider_l,slider_w,bottom_space-tolerance]); // middle slider rail
    }
    linear_extrude(10)
      offset(delta=1.2)
        import("mount_holes.dxf");
    if(usb)
      translate([40,-80,bottom_h+bottom_space+board_h+0.5])
        cube([20,20,20]);
    translate([41.5,-47.15,bottom_h+side_h-0.5])
      translate([jack_d/2,0,0])
        rotate([90,0,0])
        union(){
          translate([-jack_d/2,0,0])
            cube([jack_d,jack_d,bottom_h]);
          if(usb)
            translate([jack_d/2+2,-jack_d/2+1,0])
              cube([10,10,bottom_h]);
          cylinder(d=jack_d,h=bottom_h);
        }
  }  
}
module all(plate=false,bottom=false,brain=false, right=false, left=false){
  scale([fix_scale,fix_scale,fix_scale]){
      
    if(right){
      if(bottom)
        translate([20,0,0])
          full_bottom();
      if(brain)
        translate([0,0,0])
          brain_bottom_cartridge(usb=true);
      if(plate)
        translate([0,-160,0])
          //sample();
          plate_with_cutouts();

    }
    if(left || !right && !left) // right hand by default
      mirror([1,0,0]){
        if(bottom)
          translate([20,0,0])
            full_bottom();
        if(brain)
          translate([0,0,0])
            brain_bottom_cartridge(usb=false);
        if(plate)
          translate([0,-160,0])
            //sample();
            plate_with_cutouts();

      }  
  }
}

all(brain=true,bottom=true,plate=true,left=true,right=true);

//plate_sample();
//all(brain=true,bottom=true,right=true);


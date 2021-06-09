h=1.65;

module plate(h=h) {

  linear_extrude(h)
    import("plate_outline.dxf");
}

module cutouts(h=h) {
linear_extrude(h)
    import("plate_cutouts.dxf");
}

difference(){
  plate();
  cutouts();
}
double x = 0, y = 0, z = 0, xy = 0, xz = 0;
int changeBy = 5;

void setup() {
  size(1300, 700);
  strokeWeight(5);
}

void draw() {
  car(xy,xz);
  //wheel(0,0,0,xy,xz);
}

void wheel(double X, double Y, double Z, double XY, double XZ) {
  //background(0);
  //drawDirs(XY, XZ);
  //strokeWeight(2);
  //stroke(255);
  
  line(draw2dX(X + 12, Y - 24, Z + 12, XY, XZ) + width / 2,  height / 2 - draw2dY(X + 12, Z + 12, XZ), draw2dX(X + 12, Y - 12, Z + 24, XY, XZ) + width / 2,  height / 2 - draw2dY(X + 12, Z + 24, XZ)); // AB
  line(draw2dX(X + 12, Y + 12, Z + 24, XY, XZ) + width / 2,  height / 2 - draw2dY(X + 12, Z + 24, XZ), draw2dX(X + 12, Y - 12, Z + 24, XY, XZ) + width / 2,  height / 2 - draw2dY(X + 12, Z + 24, XZ));// BC
  line(draw2dX(X + 12, Y + 12, Z + 24, XY, XZ) + width / 2,  height / 2 - draw2dY(X + 12, Z + 24, XZ), draw2dX(X + 12, Y + 24, Z + 12, XY, XZ) + width / 2,  height / 2 - draw2dY(X + 12, Z + 12, XZ));// CD
  
  line(draw2dX(X + 12, Y - 24, Z + 12, XY, XZ) + width / 2,  height / 2 - draw2dY(X + 12, Z + 12, XZ), draw2dX(X + 12, Y - 24, Z - 12, XY, XZ) + width / 2,  height / 2 - draw2dY(X + 12, Z - 12, XZ));//AA
  line(draw2dX(X + 12, Y + 24, Z - 12, XY, XZ) + width / 2,  height / 2 - draw2dY(X + 12, Z - 12, XZ), draw2dX(X + 12, Y + 24, Z + 12, XY, XZ) + width / 2,  height / 2 - draw2dY(X + 12, Z + 12, XZ));//DD
  
  line(draw2dX(X + 12, Y - 24, Z - 12, XY, XZ) + width / 2,  height / 2 - draw2dY(X + 12, Z - 12, XZ), draw2dX(X + 12, Y - 12, Z - 24, XY, XZ) + width / 2,  height / 2 - draw2dY(X + 12, Z - 24, XZ));// AB
  line(draw2dX(X + 12, Y + 12, Z - 24, XY, XZ) + width / 2,  height / 2 - draw2dY(X + 12, Z - 24, XZ), draw2dX(X + 12, Y - 12, Z - 24, XY, XZ) + width / 2,  height / 2 - draw2dY(X + 12, Z - 24, XZ));// BC
  line(draw2dX(X + 12, Y + 12, Z - 24, XY, XZ) + width / 2,  height / 2 - draw2dY(X + 12, Z - 24, XZ), draw2dX(X + 12, Y + 24, Z - 12, XY, XZ) + width / 2,  height / 2 - draw2dY(X + 12, Z - 12, XZ));// CD
  

  //Other side
  line(draw2dX(X - 12, Y - 24, Z + 12, XY, XZ) + width / 2,  height / 2 - draw2dY(X - 12, Z + 12, XZ), draw2dX(X - 12, Y - 12, Z + 24, XY, XZ) + width / 2,  height / 2 - draw2dY(X - 12, Z + 24, XZ));// AB
  line(draw2dX(X - 12, Y + 12, Z + 24, XY, XZ) + width / 2,  height / 2 - draw2dY(X - 12, Z + 24, XZ), draw2dX(X - 12, Y - 12, Z + 24, XY, XZ) + width / 2,  height / 2 - draw2dY(X - 12, Z + 24, XZ));// BC
  line(draw2dX(X - 12, Y + 12, Z + 24, XY, XZ) + width / 2,  height / 2 - draw2dY(X - 12, Z + 24, XZ), draw2dX(X - 12, Y + 24, Z + 12, XY, XZ) + width / 2,  height / 2 - draw2dY(X - 12, Z + 12, XZ));// CD
  
  line(draw2dX(X - 12, Y - 24, Z + 12, XY, XZ) + width / 2,  height / 2 - draw2dY(X - 12, Z + 12, XZ), draw2dX(X - 12, Y - 24, Z - 12, XY, XZ) + width / 2,  height / 2 - draw2dY(X - 12, Z - 12, XZ));//AA
  line(draw2dX(X - 12, Y + 24, Z - 12, XY, XZ) + width / 2,  height / 2 - draw2dY(X - 12, Z - 12, XZ), draw2dX(X - 12, Y + 24, Z + 12, XY, XZ) + width / 2,  height / 2 - draw2dY(X - 12, Z + 12, XZ));//DD
  
  line(draw2dX(X - 12, Y - 24, Z - 12, XY, XZ) + width / 2,  height / 2 - draw2dY(X - 12, Z - 12, XZ), draw2dX(X - 12, Y - 12, Z - 24, XY, XZ) + width / 2,  height / 2 - draw2dY(X - 12, Z - 24, XZ));// AB
  line(draw2dX(X - 12, Y + 12, Z - 24, XY, XZ) + width / 2,  height / 2 - draw2dY(X - 12, Z - 24, XZ), draw2dX(X - 12, Y - 12, Z - 24, XY, XZ) + width / 2,  height / 2 - draw2dY(X - 12, Z - 24, XZ));// BC
  line(draw2dX(X - 12, Y + 12, Z - 24, XY, XZ) + width / 2,  height / 2 - draw2dY(X - 12, Z - 24, XZ), draw2dX(X - 12, Y + 24, Z - 12, XY, XZ) + width / 2,  height / 2 - draw2dY(X - 12, Z - 12, XZ));// CD

  //Crosses
  line(draw2dX(X + 12, Y - 24, Z + 12, XY, XZ) + width / 2,  height / 2 - draw2dY(X + 12, Z + 12, XZ), draw2dX(X - 12, Y - 12, Z + 24, XY, XZ) + width / 2,  height / 2 - draw2dY(X - 12, Z + 24, XZ)); // AB
  line(draw2dX(X - 12, Y - 24, Z + 12, XY, XZ) + width / 2,  height / 2 - draw2dY(X - 12, Z + 12, XZ), draw2dX(X + 12, Y - 12, Z + 24, XY, XZ) + width / 2,  height / 2 - draw2dY(X + 12, Z + 24, XZ));// AB
  
  line(draw2dX(X + 12, Y + 12, Z + 24, XY, XZ) + width / 2,  height / 2 - draw2dY(X + 12, Z + 24, XZ), draw2dX(X - 12, Y - 12, Z + 24, XY, XZ) + width / 2,  height / 2 - draw2dY(X - 12, Z + 24, XZ));// BC
  line(draw2dX(X - 12, Y + 12, Z + 24, XY, XZ) + width / 2,  height / 2 - draw2dY(X - 12, Z + 24, XZ), draw2dX(X + 12, Y - 12, Z + 24, XY, XZ) + width / 2,  height / 2 - draw2dY(X + 12, Z + 24, XZ));// BC
  
  line(draw2dX(X + 12, Y + 12, Z + 24, XY, XZ) + width / 2,  height / 2 - draw2dY(X + 12, Z + 24, XZ), draw2dX(X - 12, Y + 24, Z + 12, XY, XZ) + width / 2,  height / 2 - draw2dY(X - 12, Z + 12, XZ));// CD
  line(draw2dX(X - 12, Y + 12, Z + 24, XY, XZ) + width / 2,  height / 2 - draw2dY(X - 12, Z + 24, XZ), draw2dX(X + 12, Y + 24, Z + 12, XY, XZ) + width / 2,  height / 2 - draw2dY(X + 12, Z + 12, XZ));// CD
  
  line(draw2dX(X + 12, Y - 24, Z - 12, XY, XZ) + width / 2,  height / 2 - draw2dY(X + 12, Z - 12, XZ), draw2dX(X - 12, Y - 24, Z + 12, XY, XZ) + width / 2,  height / 2 - draw2dY(X - 12, Z + 12, XZ));//AA
  line(draw2dX(X + 12, Y - 24, Z + 12, XY, XZ) + width / 2,  height / 2 - draw2dY(X + 12, Z + 12, XZ), draw2dX(X - 12, Y - 24, Z - 12, XY, XZ) + width / 2,  height / 2 - draw2dY(X - 12, Z - 12, XZ));//AA
  
  line(draw2dX(X + 12, Y + 24, Z - 12, XY, XZ) + width / 2,  height / 2 - draw2dY(X + 12, Z - 12, XZ), draw2dX(X - 12, Y + 24, Z + 12, XY, XZ) + width / 2,  height / 2 - draw2dY(X - 12, Z + 12, XZ));//DD
  line(draw2dX(X + 12, Y + 24, Z + 12, XY, XZ) + width / 2,  height / 2 - draw2dY(X + 12, Z + 12, XZ), draw2dX(X - 12, Y + 24, Z - 12, XY, XZ) + width / 2,  height / 2 - draw2dY(X - 12, Z - 12, XZ));//DD
  
  line(draw2dX(X + 12, Y - 24, Z - 12, XY, XZ) + width / 2,  height / 2 - draw2dY(X + 12, Z - 12, XZ), draw2dX(X - 12, Y - 12, Z - 24, XY, XZ) + width / 2,  height / 2 - draw2dY(X - 12, Z - 24, XZ)); // AB
  line(draw2dX(X - 12, Y - 24, Z - 12, XY, XZ) + width / 2,  height / 2 - draw2dY(X - 12, Z - 12, XZ), draw2dX(X + 12, Y - 12, Z - 24, XY, XZ) + width / 2,  height / 2 - draw2dY(X + 12, Z - 24, XZ));// AB
  
  line(draw2dX(X + 12, Y + 12, Z - 24, XY, XZ) + width / 2,  height / 2 - draw2dY(X + 12, Z - 24, XZ), draw2dX(X - 12, Y - 12, Z - 24, XY, XZ) + width / 2,  height / 2 - draw2dY(X - 12, Z - 24, XZ));// BC
  line(draw2dX(X - 12, Y + 12, Z - 24, XY, XZ) + width / 2,  height / 2 - draw2dY(X - 12, Z - 24, XZ), draw2dX(X + 12, Y - 12, Z - 24, XY, XZ) + width / 2,  height / 2 - draw2dY(X + 12, Z - 24, XZ));// BC
  
  line(draw2dX(X + 12, Y + 12, Z - 24, XY, XZ) + width / 2,  height / 2 - draw2dY(X + 12, Z - 24, XZ), draw2dX(X - 12, Y + 24, Z - 12, XY, XZ) + width / 2,  height / 2 - draw2dY(X - 12, Z - 12, XZ));// CD
  line(draw2dX(X - 12, Y + 12, Z - 24, XY, XZ) + width / 2,  height / 2 - draw2dY(X - 12, Z - 24, XZ), draw2dX(X + 12, Y + 24, Z - 12, XY, XZ) + width / 2,  height / 2 - draw2dY(X + 12, Z - 12, XZ));// CD
}

void car(double XY, double XZ) {
  background(0);
  drawDirs(XY, XZ);
  strokeWeight(2);
  stroke(255);
  
  // Back design
  line(draw2dX(-60, -140, 18, XY, XZ) + width / 2,  height / 2 - draw2dY(-60, 18, XZ), draw2dX(60, -140, 18, XY, XZ) + width / 2,  height / 2 - draw2dY(60, 18, XZ));// FF
  line(draw2dX(-60, -140, 18, XY, XZ) + width / 2,  height / 2 - draw2dY(-60, 18, XZ), draw2dX(-60, -120, 11, XY, XZ) + width / 2,  height / 2 - draw2dY(-60, 11, XZ));// FG
  
  line(draw2dX(40, -120, 12, XY, XZ) + width / 2,  height / 2 - draw2dY(40, 12, XZ), draw2dX(40, -112, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(40, 0, XZ));// ST
  line(draw2dX(-40, -120, 12, XY, XZ) + width / 2,  height / 2 - draw2dY(-40, 12, XZ), draw2dX(-40, -112, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(-40, 0, XZ));// ST
  
  line(draw2dX(60, -140, 18, XY, XZ) + width / 2,  height / 2 - draw2dY(60, 18, XZ), draw2dX(60, -120, 11, XY, XZ) + width / 2,  height / 2 - draw2dY(60, 11, XZ));// FG
  line(draw2dX(60, -120, 11, XY, XZ) + width / 2,  height / 2 - draw2dY(60, 11, XZ), draw2dX(-60, -120, 11, XY, XZ) + width / 2,  height / 2 - draw2dY(-60, 11, XZ));// GG
  
  // Back
  line(draw2dX(60, -120, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(60, 0, XZ), draw2dX(-60, -120, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(-60, 0, XZ));// MM
  
  line(draw2dX(60, -120, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(60, 0, XZ), draw2dX(60, -60, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(60, 0, XZ));// MJ
  line(draw2dX(-60, -120, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(-60, 0, XZ), draw2dX(-60, -60, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(-60, 0, XZ));// MJ
  
  //Back uplift
  line(draw2dX(0, -105, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(0, 0, XZ), draw2dX(0, -60, 12, XY, XZ) + width / 2,  height / 2 - draw2dY(0, 12, XZ));// HI
  
  line(draw2dX(60, -60, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(60, 0, XZ), draw2dX(0, -105, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(0, 0, XZ));// JH
  line(draw2dX(-60, -60, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(-60, 0, XZ), draw2dX(0, -105, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(0, 0, XZ));// JH
  
  line(draw2dX(60, -60, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(60, 0, XZ), draw2dX(0, -60, 12, XY, XZ) + width / 2,  height / 2 - draw2dY(0, 12, XZ));// JI
  line(draw2dX(-60, -60, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(-60, 0, XZ), draw2dX(0, -60, 12, XY, XZ) + width / 2,  height / 2 - draw2dY(0, 12, XZ));// JI
  
  // Front
  line(draw2dX(48, 180, -40, XY, XZ) + width / 2,  height / 2 - draw2dY(48, -40, XZ), draw2dX(-48, 180, -40, XY, XZ) + width / 2,  height / 2 - draw2dY(-48, -40, XZ));// EE
  line(draw2dX(45, 160, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(45, 0, XZ), draw2dX(-45, 160, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(-45, 0, XZ));// D1D1
  
  line(draw2dX(48, 180, -40, XY, XZ) + width / 2,  height / 2 - draw2dY(48, -40, XZ), draw2dX(45, 160, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(45, 0, XZ));// ED1
  line(draw2dX(-48, 180, -40, XY, XZ) + width / 2,  height / 2 - draw2dY(-48, -40, XZ), draw2dX(-45, 160, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(-45, 0, XZ));// ED1
  
  line(draw2dX(45, 160, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(45, 0, XZ), draw2dX(58, 160, -40, XY, XZ) + width / 2,  height / 2 - draw2dY(58, -40, XZ));// D1D2
  line(draw2dX(-45, 160, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(-45, 0, XZ), draw2dX(-58, 160, -40, XY, XZ) + width / 2,  height / 2 - draw2dY(-58, -40, XZ));// D1D2
  
  line(draw2dX(48, 180, -40, XY, XZ) + width / 2,  height / 2 - draw2dY(48, -40, XZ), draw2dX(58, 160, -40, XY, XZ) + width / 2,  height / 2 - draw2dY(58, -40, XZ));//ED2
  line(draw2dX(-48, 180, -40, XY, XZ) + width / 2,  height / 2 - draw2dY(-48, -40, XZ), draw2dX(-58, 160, -40, XY, XZ) + width / 2,  height / 2 - draw2dY(-58, -40, XZ));//ED2
  
  // Roof
  line(draw2dX(40, -48, 20, XY, XZ) + width / 2,  height / 2 - draw2dY(40, 20, XZ), draw2dX(-40, -48, 20, XY, XZ) + width / 2,  height / 2 - draw2dY(-40, 20, XZ));// AA
  line(draw2dX(44, 37, 20, XY, XZ) + width / 2,  height / 2 - draw2dY(44, 20, XZ), draw2dX(-44, 37, 20, XY, XZ) + width / 2,  height / 2 - draw2dY(-44, 20, XZ));// BB
  
  line(draw2dX(40, -48, 20, XY, XZ) + width / 2,  height / 2 - draw2dY(40, 20, XZ), draw2dX(44, 37, 20, XY, XZ) + width / 2,  height / 2 - draw2dY(44, 20, XZ));// AB
  line(draw2dX(-40, -48, 20, XY, XZ) + width / 2,  height / 2 - draw2dY(-40, 20, XZ), draw2dX(-44, 37, 20, XY, XZ) + width / 2,  height / 2 - draw2dY(-44, 20, XZ));// AB
  
  // Front glass
  line(draw2dX(44, 80, 8, XY, XZ) + width / 2,  height / 2 - draw2dY(44, 8, XZ), draw2dX(-44, 80, 8, XY, XZ) + width / 2,  height / 2 - draw2dY(-44, 8, XZ));// CC
  
  line(draw2dX(44, 37, 20, XY, XZ) + width / 2,  height / 2 - draw2dY(44, 20, XZ), draw2dX(44, 80, 8, XY, XZ) + width / 2,  height / 2 - draw2dY(44, 8, XZ));// BC
  line(draw2dX(-44, 37, 20, XY, XZ) + width / 2,  height / 2 - draw2dY(-44, 20, XZ), draw2dX(-44, 80, 8, XY, XZ) + width / 2,  height / 2 - draw2dY(-44, 8, XZ));// BC
  
  // Engine box
  line(draw2dX(44, 80, 8, XY, XZ) + width / 2,  height / 2 - draw2dY(44, 8, XZ), draw2dX(45, 160, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(45, 0, XZ));// CD1
  line(draw2dX(-44, 80, 8, XY, XZ) + width / 2,  height / 2 - draw2dY(-44, 8, XZ), draw2dX(-45, 160, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(-45, 0, XZ));// CD1
  
  line(draw2dX(56, 120, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(56, 0, XZ), draw2dX(60, 80, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(60, 0, XZ));// LK
  line(draw2dX(-56, 120, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(-56, 0, XZ), draw2dX(-60, 80, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(-60, 0, XZ));// LK
  
  line(draw2dX(56, 120, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(56, 0, XZ), draw2dX(45, 160, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(45, 0, XZ));// LD1
  line(draw2dX(-56, 120, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(-56, 0, XZ), draw2dX(-45, 160, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(-45, 0, XZ));// LD1
  
  // Back glass
  line(draw2dX(60, -60, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(60, 0, XZ), draw2dX(-60, -60, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(-60, 0, XZ));// JJ
  
  line(draw2dX(60, -60, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(60, 0, XZ), draw2dX(40, -48, 20, XY, XZ) + width / 2,  height / 2 - draw2dY(40, 20, XZ));// JA
  line(draw2dX(-60, -60, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(-60, 0, XZ), draw2dX(-40, -48, 20, XY, XZ) + width / 2,  height / 2 - draw2dY(-40, 20, XZ));// JA
  
  // Windows
  line(draw2dX(60, -60, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(60, 0, XZ), draw2dX(60, 80, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(60, 0, XZ));// JK
  line(draw2dX(-60, -60, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(-60, 0, XZ), draw2dX(-60, 80, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(-60, 0, XZ));// JK
  
  line(draw2dX(60, 80, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(60, 0, XZ), draw2dX(44, 80, 8, XY, XZ) + width / 2,  height / 2 - draw2dY(44, 8, XZ));// KC
  line(draw2dX(-60, 80, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(-60, 0, XZ), draw2dX(-44, 80, 8, XY, XZ) + width / 2,  height / 2 - draw2dY(-44, 8, XZ));// KC
  
  // Sides
  line(draw2dX(60, -60, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(60, 0, XZ), draw2dX(69, -60, -40, XY, XZ) + width / 2,  height / 2 - draw2dY(69, -40, XZ));// JO
  line(draw2dX(-60, -60, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(-60, 0, XZ), draw2dX(-69, -60, -40, XY, XZ) + width / 2,  height / 2 - draw2dY(-69, -40, XZ));// JO
  
  line(draw2dX(60, 80, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(60, 0, XZ), draw2dX(69, 80, -40, XY, XZ) + width / 2,  height / 2 - draw2dY(69, -40, XZ));// KP
  line(draw2dX(-60, 80, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(-60, 0, XZ), draw2dX(-69, 80, -40, XY, XZ) + width / 2,  height / 2 - draw2dY(-69, -40, XZ));// KP
  
  line(draw2dX(56, 120, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(56, 0, XZ), draw2dX(65, 120, -40, XY, XZ) + width / 2,  height / 2 - draw2dY(65, -40, XZ));// LQ
  line(draw2dX(-56, 120, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(-56, 0, XZ), draw2dX(-65, 120, -40, XY, XZ) + width / 2,  height / 2 - draw2dY(-65, -40, XZ));// LQ
  
  line(draw2dX(69, -60, -40, XY, XZ) + width / 2,  height / 2 - draw2dY(69, -40, XZ), draw2dX(69, 80, -40, XY, XZ) + width / 2,  height / 2 - draw2dY(69, -40, XZ));// OP  
  line(draw2dX(69, 80, -40, XY, XZ) + width / 2,  height / 2 - draw2dY(69, -40, XZ), draw2dX(65, 120, -40, XY, XZ) + width / 2,  height / 2 - draw2dY(65, -40, XZ));// PQ
  line(draw2dX(65, 120, -40, XY, XZ) + width / 2,  height / 2 - draw2dY(65, -40, XZ), draw2dX(58, 160, -40, XY, XZ) + width / 2,  height / 2 - draw2dY(58, -40, XZ));// QD2
  
  line(draw2dX(-69, -60, -40, XY, XZ) + width / 2,  height / 2 - draw2dY(-69, -40, XZ), draw2dX(-69, 80, -40, XY, XZ) + width / 2,  height / 2 - draw2dY(-69, -40, XZ));// OP  
  line(draw2dX(-69, 80, -40, XY, XZ) + width / 2,  height / 2 - draw2dY(-69, -40, XZ), draw2dX(-65, 120, -40, XY, XZ) + width / 2,  height / 2 - draw2dY(-65, -40, XZ));// PQ
  line(draw2dX(-65, 120, -40, XY, XZ) + width / 2,  height / 2 - draw2dY(-65, -40, XZ), draw2dX(-58, 160, -40, XY, XZ) + width / 2,  height / 2 - draw2dY(-58, -40, XZ));// QD2
  
  //Back mudguard
  line(draw2dX(69, -110, -40, XY, XZ) + width / 2,  height / 2 - draw2dY(69, -40, XZ), draw2dX(-69, -110, -40, XY, XZ) + width / 2,  height / 2 - draw2dY(-69, -40, XZ));// RR
  
  line(draw2dX(60, -120, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(60, 0, XZ), draw2dX(69, -110, -40, XY, XZ) + width / 2,  height / 2 - draw2dY(69, -40, XZ));// MR
  line(draw2dX(-60, -120, 0, XY, XZ) + width / 2,  height / 2 - draw2dY(-60, 0, XZ), draw2dX(-69, -110, -40, XY, XZ) + width / 2,  height / 2 - draw2dY(-69, -40, XZ));// MR
  
  //Wheels
  wheel(60,-90,-30,XY,XZ);
  wheel(-60,-90,-30,XY,XZ);
  wheel(60,90,-30,XY,XZ);
  wheel(-60,90,-30,XY,XZ);
}

void drawDirs(double XY, double XZ) {
  strokeWeight(1);
  stroke(255, 0, 0);
  line(width / 2, height / 2, draw2dX(100,0,0,XY,XZ) + width / 2, height / 2 - draw2dY(100,0,XZ));
  //stroke(0, 255, 0);
  line(width / 2, height / 2, draw2dX(0,100,0,XY,XZ) + width / 2, height / 2 - draw2dY(0,0,XZ));
  //stroke(0, 0, 255);
  line(width / 2, height / 2, draw2dX(0,0,100,XY,XZ) + width / 2, height / 2 - draw2dY(0,100,XZ));
  stroke(0,255,0);
  line(width / 2, height / 2, draw2dX(71,71,71,XY,XZ) + width / 2, height / 2 - draw2dY(71,71,XZ));
}

float draw2dX(double X, double Y, double Z, double XY, double XZ) {
  XY = Math.toRadians(XY);
  XZ = Math.toRadians(XZ);
  double dX = Y * Math.cos(XY) - X * Math.sin(XY) * Math.cos(XZ) + Z * Math.sin(XY) * Math.sin(XZ);
  return (float)dX;
}

float draw2dY(double X, double Z, double XZ) {
  XZ = Math.toRadians(XZ);
  double dY = X * Math.sin(XZ) + Z * Math.cos(XZ);
  return (float)dY;
}

void draw3d(double X, double Y, double Z, double XY, double XZ) {
  point((width / 2) + draw2dX(X,Y,Z,XY,XZ),(height / 2) - draw2dY(X,Z,XZ));
}

void keyPressed() {
  if (keyCode == 38) xz += changeBy;
  else if (keyCode == 40) xz -= changeBy;
  else if (keyCode == 39) xy += changeBy;
  else if (keyCode == 37) xy -= changeBy;
  draw();
}

//コメント外せばPDFに出力可
//import processing.pdf.*;

void setup() {
  //うしろの部分のコメント外すとPDFに出力可
  size(1074, 651/*, PDF, "toshiemon.pdf"*/);
  colorMode(RGB, 256);
  background(256, 256, 256);
}

void draw() {
  //これなんだろう
  float r = 20.0;
  //x座標
  float x = 0.0;
  //座標
  float y = 0.0;
  //円の直径の値
  float a;
  //Rの値
  int c1 = 10;
  //Gの値
  int c2 = 113;
  //Bの値
  int c3 = 245;
  //透過度
  float alp = 70;
  float[] pointx = new float[181]; 
  float[] pointy = new float[181];
  
  //座標の初期値
  pointx[0] = 840.0;
  pointy[0] = 170.0;

  //フォントの設定s
  PFont lane = createFont("Gabriola", 60);
  textFont(lane);
  
  //円と線の描画
  for (int i = 1; i <= 180; i += 1) {
    x = r * cos(i) + 820.0;
    pointx[i] = x;
    y = r * sin(i) + 170.0;
    pointy[i] = y;
    
    smooth();
    
    stroke(c1, c2, c3);
    fill(c1, c2, c3, alp);
    line(pointx[i - 1], pointy[i - 1], x - sin(i), y - sin(i));
    noStroke();
    
    a = random(50, 100);
    
    fill(c1, c2, c3, alp);
    noStroke();
    ellipse(x, y, a, a);
    noFill();
    
    r += 5;
    
    c1 += 1.42;
    c2 += 0.8;
    c3 += 0.006;
    alp -= 0.1;
  }
  
  smooth();
  fill(0, 0, 0);
  //
  text("Name : tosshi-", 30, 420);
  text("Twitter : @toshiemon18", 30, 470);
  text("Interesrt : Ruby, MetaProgramming", 30, 520);
  text("Gtk2, Processing", 190, 570);
  
  stop();
}




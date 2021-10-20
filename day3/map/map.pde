// min:6 max:1
// min: 0 max: 30

int gMin = 6;
int gMax = 1;
int itMin= 0;
int itMax=30;

int mGermanGrade = 2;

//3:6=x:30

void setup() {
  int mItalianGrade = int(map(mGermanGrade,gMin,gMax,itMin,itMax));
  
  println(mItalianGrade);
}

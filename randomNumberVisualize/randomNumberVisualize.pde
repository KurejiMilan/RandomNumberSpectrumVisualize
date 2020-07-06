//developed by Milan Rai
//git:https://github.com/KurejiMilan

//a simple sketch to visualize how often a random number 
//is selected in a program 

int[] spec= new int[100];

class pop{
  int p=0;
  distribution[] dis;
  pop(int a){
    p=a;
    dis = new distribution[p];
    for(int j=0; j<p; j++){
      dis[j] = new distribution();
    }
  }
  //distribution selection(){
  //  int x=int(random(p+.1));
  //  print(x);
  //  return dis[x];
  //}
  void show(){
    for(int i=0; i<p; i++){
      dis[i].display();
    }
  }
}

class distribution{
  int rad=0;
  distribution(){
    rad= int(random(100));
  }
   void display(){
     print(rad,"\n");
   }
}

pop population= new pop(2000);
void setup(){
  size(1000,500);
  colorMode(HSB);
  background(250, 49, 83);
  for(int i=0; i<100; i++){
    spec[i] =0;
  }
  for(int i=0; i<population.p; i++){
    ++spec[population.dis[i].rad];
  }
}

void draw(){
  for(int i=0; i<100; i++){
    push();
    translate(i*10, 500);
    fill(#F7FFFC);
    //noStroke();
    rect(0, 0, 10, -spec[i]*10);
    pop();
  }
}

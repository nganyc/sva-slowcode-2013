

class Store {
  int id;
  String address;
  String label;
  float latitude;
  float longitude;
  
  Store(int _id, String _address, String _label, float _latitude, float _longitude){
    id = id;
    address = _address;
    label = _label;
    latitude = _latitude;
    longitude = _longitude;
  }
  
  void draw(){
    
    float curX = map(longitude, mostWest, mostEast, 0, width);
    float curY = map(latitude, mostSouth, mostNorth, height, 0);
        
    fill(0, 40, 255);
    ellipse(curX, curY, 5, 5);
    
    PVector mousePosition = new PVector(mouseX,mouseY);
    PVector storeLocation = new PVector(curX, curY);
    if(mousePosition.dist(storeLocation) < distanceForDetails){
      line(mouseX,mouseY, curX, curY);
      text(label, curX, curY+11);
      text(address, curX,curY+22);
    }
  }
}

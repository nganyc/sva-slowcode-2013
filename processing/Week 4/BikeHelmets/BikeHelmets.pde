
float distanceForDetails = 5.0;

PFont displayFont;

JSONObject helmetJSON;
float mostWest = 0.0;
float mostEast = -100.0;
float mostNorth = 0.0;
float mostSouth = 100.0;

Store[] stores;

void setup() {

  size(800, 800);
  smooth();
  noCursor();
  
  displayFont = createFont("Arial",48);
  textFont(displayFont,10);

  helmetJSON = loadJSONObject("http://appservices.citibikenyc.com/v1/helmet/list");
  JSONArray storesFromJSON = helmetJSON.getJSONArray("results");
  stores = new Store[storesFromJSON.size()];

  for (int i=0;i<storesFromJSON.size();i++) {
    // get the object from the array
    JSONObject thisJSONStore = storesFromJSON.getJSONObject(i);

    // grab values from the obj, to put in our own object
    int id = thisJSONStore.getInt("id");
    String address = thisJSONStore.getString("address");
    String label = thisJSONStore.getString("label");
    float latitude = thisJSONStore.getFloat("latitude");
    float longitude = thisJSONStore.getFloat("longitude");

    // make our own object, add to array
    Store newStore = new Store(id, address, label, latitude, longitude);
    stores[i] = newStore;

    // do bigger check for furthest n, s, e, w
    if (latitude > mostNorth) mostNorth = latitude;
    if (latitude < mostSouth) mostSouth = latitude;
    if (longitude < mostWest) mostWest = longitude;
    if (longitude > mostEast) mostEast = longitude;
  }
  println("Edges: " + mostNorth + " " + mostSouth + " " + mostWest + " " + mostEast);
 
}

void draw() {
  background(255);
  
  fill(200);
  noStroke();
  ellipse(mouseX,mouseY,15,15);
  
  for(int i=0;i<stores.length;i++){
    stores[i].draw();
  }
  
}


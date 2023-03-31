// don't initialize here
Sprite s;


// this function runs one time at the beginning
void setup() {
    size(800,600); // windown size, 800 wide, 600 tall
    s = new Sprite (width/2, height/2, 50, 50);
}

// always runs at the speed of the frame rate

void draw() {
    s.update();
    s.display();
}

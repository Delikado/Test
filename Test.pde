// this function runs one time at the beginning
void setup() {
    size(800,600); // windown size, 800 wide, 600 tall
}

// always runs, at the speed of the frame rate

void draw() {
    // a circle that follows the mouse, 50x50, WxH
    ellipse(mouseX, mouseY, 50, 50);
}

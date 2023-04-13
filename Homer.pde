class Homer extends Invader {


    long mark, wait = 1500;

    Homer(float x, float y) {
        super(x,y);
        mark = millis();
    }

    @Override
    void update() {
        super.update();
        PVector aim = new PVector(_SM.player.pos.x  - this.pos.x, _SM.player.pos.y - this.pos.y);
        aim = aim.normalize().mult(6); // turn this into a single unit vector then increase its magnitude
        if((millis()) - mark > wait) {
            mark = millis();
            _SM.spawn(new Kamikaze(pos.x, pos.y, 10, 10));
        }
    }
    
}
class Kamikaze extends Sprite{
     // constructor
`   Kamikaze(float x, float y) {
        super(x, y, 40, 40);
        vel = new PVector(_SM.player.pos.x  - this.pos.x, _SM.player.pos.y - this.pos.y);
        vel = vel.normalize().mult(8);
    }

    Kamikaze(float x, float y, float w, float h) {
        super(x, y, w, h);
        vel = new PVector(_SM.player.pos.x  - this.pos.x, _SM.player.pos.y - this.pos.y);
        vel = vel.normalize().mult(8);
    }
    
    @Override 
    void update() {
        vel = new PVector(_SM.player.pos.x  - this.pos.x, _SM.player.pos.y - this.pos.y);
        vel = vel.normalize().mult(5);
        pos.add(vel);
        
        if (pos.x < 0 || pos.x > width) {
            vel.x *= -1;
        }
    }
}
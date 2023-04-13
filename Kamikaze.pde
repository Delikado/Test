class Kamikaze extends Sprite{
     // constructor
`   Kamikaze(float x, float y) {
        super(x, y, 40, 40);
        vel = new PVector(_SM.player.pos.x  - this.pos.x, _SM.player.pos.y - this.pos.y);
    }
    
    @Override // change directions left and right
    void update() {
        pos.add(vel);
        
        if (pos.x < 0 || pos.x > width) {
            vel.x *= -1;
        }
    }
}
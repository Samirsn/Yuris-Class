//
//  MyScene.m
//  4physicsBodys_Linked_By_RopeJoint
//
//  Created by YG on 2/17/14.
//  Copyright (c) 2014 YuryGitman. All rights reserved.
//


#import "MyScene.h"

@interface MyScene()
@property SKSpriteNode* myCircle;
@property SKSpriteNode* mySquare2;
@property SKSpriteNode* mySquare3;
@property SKSpriteNode* mySquare4;
@property SKSpriteNode* mySquare5;
@property SKSpriteNode* mySquare6;
@property SKSpriteNode* mySquare7;
@property SKSpriteNode* mySquare8;


@property SKSpriteNode* myWallLeft;
@property SKSpriteNode* myWallR;
@property SKSpriteNode* myWallB;


@property SKSpriteNode* myAvoid;

@property SKSpriteNode* myAvoid1;


//@property SKSpriteNode* myShelf;
//@property SKSpriteNode* myShelf1;

@property SKPhysicsJointPin* myRopeJoint;
@property SKPhysicsJointPin* myRopeJoint1;
@property SKPhysicsJointPin* myRopeJoint2;
@property SKPhysicsJointPin* myRopeJoint3;
@property SKPhysicsJointPin* myRopeJoint4;
@property SKPhysicsJointPin* myRopeJoint5;
@property SKPhysicsJointPin* myRopeJoint6;
@end

@implementation MyScene

-(void) activateJointRope{
    
    
    _myRopeJoint = [SKPhysicsJointPin jointWithBodyA:_myCircle.physicsBody bodyB:_mySquare2.physicsBody anchor:_myCircle.position];
    
    [self.physicsWorld addJoint:_myRopeJoint];
    
    _myRopeJoint1 = [SKPhysicsJointPin jointWithBodyA:_mySquare2.physicsBody bodyB:_mySquare3.physicsBody anchor:_mySquare2.position];
    
    [self.physicsWorld addJoint:_myRopeJoint1];
    
    _myRopeJoint2 = [SKPhysicsJointPin jointWithBodyA:_mySquare3.physicsBody bodyB:_mySquare4.physicsBody anchor:_mySquare3.position];
    
    [self.physicsWorld addJoint:_myRopeJoint2];
    
    _myRopeJoint3 = [SKPhysicsJointPin jointWithBodyA:_mySquare4.physicsBody bodyB:_mySquare5.physicsBody anchor:_mySquare4.position];
    
    [self.physicsWorld addJoint:_myRopeJoint3];
    
    _myRopeJoint4 = [SKPhysicsJointPin jointWithBodyA:_mySquare5.physicsBody bodyB:_mySquare6.physicsBody anchor:_mySquare5.position];
    
    [self.physicsWorld addJoint:_myRopeJoint4];
    
    _myRopeJoint5 = [SKPhysicsJointPin jointWithBodyA:_mySquare6.physicsBody bodyB:_mySquare7.physicsBody anchor:_mySquare6.position];
    
    [self.physicsWorld addJoint:_myRopeJoint5];
    
    _myRopeJoint6 = [SKPhysicsJointPin jointWithBodyA:_mySquare7.physicsBody bodyB:_mySquare8.physicsBody anchor:_mySquare7.position];
    
    [self.physicsWorld addJoint:_myRopeJoint6];
    
    
    
//    _myRopeJoint = [SKPhysicsJointLimit jointWithBodyA:_mySquare1.physicsBody bodyB:_mySquare2.physicsBody anchorA:_mySquare1.position anchorB:_mySquare2.position];
//    
//    
//    [self.physicsWorld addJoint:_myRopeJoint];
//    
//    _myRopeJoint1 = [SKPhysicsJointLimit jointWithBodyA:_mySquare2.physicsBody bodyB:_mySquare3.physicsBody anchorA:_mySquare2.position anchorB:_mySquare3.position];
//    
//    [self.physicsWorld addJoint:_myRopeJoint1];
//    
//    
//    _myRopeJoint2 = [SKPhysicsJointLimit jointWithBodyA:_mySquare3.physicsBody bodyB:_mySquare4.physicsBody anchorA:_mySquare3.position anchorB:_mySquare4.position];
//    
//    [self.physicsWorld addJoint:_myRopeJoint2];
//    
//    
//    _myRopeJoint3 = [SKPhysicsJointLimit jointWithBodyA:_mySquare4.physicsBody bodyB:_mySquare5.physicsBody anchorA:_mySquare4.position anchorB:_mySquare5.position];
//    
//    [self.physicsWorld addJoint:_myRopeJoint3];
//    
//    _myRopeJoint4 = [SKPhysicsJointLimit jointWithBodyA:_mySquare5.physicsBody bodyB:_mySquare6.physicsBody anchorA:_mySquare5.position anchorB:_mySquare6.position];
//    
//    [self.physicsWorld addJoint:_myRopeJoint4];
//   
//    _myRopeJoint5 = [SKPhysicsJointLimit jointWithBodyA:_mySquare6.physicsBody bodyB:_mySquare7.physicsBody anchorA:_mySquare6.position anchorB:_mySquare6.position];
//    
//    [self.physicsWorld addJoint:_myRopeJoint5];
//    
//    _myRopeJoint6 = [SKPhysicsJointLimit jointWithBodyA:_mySquare7.physicsBody bodyB:_mySquare8.physicsBody anchorA:_mySquare7.position anchorB:_mySquare8.position];
//    
//    [self.physicsWorld addJoint:_myRopeJoint6];
}


-(void) spawnSquares{

    
    _myCircle = [[SKSpriteNode alloc]initWithColor:[SKColor redColor] size:CGSizeMake(25, 25)];
    _myCircle.alpha =0.8;

    _mySquare2 =[[SKSpriteNode alloc]initWithColor:[SKColor redColor] size:CGSizeMake(3, 15)];
    _mySquare2.alpha =0.7;

    _mySquare3 =[[SKSpriteNode alloc]initWithColor:[SKColor redColor] size:CGSizeMake(3, 15)];
    _mySquare3.alpha =.6;

    _mySquare4 =[[SKSpriteNode alloc]initWithColor:[SKColor redColor] size:CGSizeMake(3, 15)];
    _mySquare4.alpha =0.5;

    _mySquare5 =[[SKSpriteNode alloc]initWithColor:[SKColor redColor] size:CGSizeMake(3,15)];
    _mySquare5.alpha =0.4;

    _mySquare6 =[[SKSpriteNode alloc]initWithColor:[SKColor redColor] size:CGSizeMake(3,15)];
    _mySquare6.alpha =0.3;

    _mySquare7 =[[SKSpriteNode alloc]initWithColor:[SKColor redColor] size:CGSizeMake(3 ,15)];
    _mySquare7.alpha =0.2;

    _mySquare8 =[[SKSpriteNode alloc]initWithColor:[SKColor redColor] size:CGSizeMake(3, 15)];
    _mySquare8.alpha =0.1;

    
    [_myCircle setPosition:CGPointMake(self.size.width/1.5, self.size.height/1.5)];
    [_mySquare2 setPosition:CGPointMake(self.size.width/1.5, self.size.height/1.6)];
    [_mySquare3 setPosition:CGPointMake(self.size.width/1.5, self.size.height/1.7)];
    [_mySquare4 setPosition:CGPointMake(self.size.width/1.5, self.size.height/1.8)];
    [_mySquare5 setPosition:CGPointMake(self.size.width/1.5, self.size.height/1.9)];
    [_mySquare6 setPosition:CGPointMake(self.size.width/1.5, self.size.height/2)];
    [_mySquare7 setPosition:CGPointMake(self.size.width/1.5, self.size.height/2.1)];
    [_mySquare8 setPosition:CGPointMake(self.size.width/1.5, self.size.height/2.2)];
    //[_mySquare8 setPosition:CGPointMake(200, 203)];
    
    _myCircle.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_myCircle.size];
    _mySquare2.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare2.size];
    _mySquare3.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare3.size];
    _mySquare4.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare4.size];
    _mySquare5.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare5.size];
    _mySquare6.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare6.size];
    _mySquare7.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare7.size];
    _mySquare8.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare8.size];
    //_mySquare8.physicsBody = [SKPhysicsBody bodyWithCircleOfRadius:1];
    
    [_myCircle.physicsBody setRestitution:.5];
    [_mySquare2.physicsBody setRestitution:0];
    [_mySquare3.physicsBody setRestitution:0];
    [_mySquare4.physicsBody setRestitution:0];
    [_mySquare5.physicsBody setRestitution:0];
    [_mySquare6.physicsBody setRestitution:0];
    [_mySquare7.physicsBody setRestitution:0];
    [_mySquare8.physicsBody setRestitution:0];
    

    [self addChild:_myCircle];
    [self addChild:_mySquare2];
    [self addChild:_mySquare3];
    [self addChild:_mySquare4];
    [self addChild:_mySquare5];
    [self addChild:_mySquare6];
    [self addChild:_mySquare7];
    [self addChild:_mySquare8];
    
    
   
    
}

//-(void)makeShelf{
//    _myShelf = [[SKSpriteNode alloc]initWithColor:[SKColor lightGrayColor] size:CGSizeMake(50, 20)];
//    _myShelf.position = CGPointMake(100, 400);
//    _myShelf.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_myShelf.size];
//    [_myShelf.physicsBody setDynamic:NO];
//    
//    [self addChild:_myShelf];
//    
//    _myShelf1 = [[SKSpriteNode alloc]initWithColor:[SKColor lightGrayColor] size:CGSizeMake(50, 20)];
//    _myShelf1.position = CGPointMake(100, 300);
//    _myShelf1.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_myShelf1.size];
//    [_myShelf1.physicsBody setDynamic:NO];
//    
//    [self addChild:_myShelf1];
//    
//    
//}



-(void)makeAvoid{
    _myAvoid = [[SKSpriteNode alloc]initWithColor:[SKColor yellowColor] size:CGSizeMake(50, 50)];
    _myAvoid.position = CGPointMake(100, 300);
    _myAvoid.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_myAvoid.size];
    [_myAvoid.physicsBody setDynamic:YES];

    [self addChild:_myAvoid];
    
    
    _myAvoid1 = [[SKSpriteNode alloc]initWithColor:[SKColor redColor] size:CGSizeMake(50, 50)];
    _myAvoid1.position = CGPointMake(100, 100);
    _myAvoid1.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_myAvoid1.size];
    [_myAvoid1.physicsBody setDynamic:YES];
    
    [self addChild:_myAvoid1];

}
-(void)makeWall{
        _myWallLeft = [[SKSpriteNode alloc]initWithColor:[SKColor lightGrayColor] size:CGSizeMake(10, 1150)];
        _myWallLeft.position = CGPointMake(10, 0);
        _myWallLeft.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_myWallLeft.size];
        [_myWallLeft.physicsBody setDynamic:NO];
    
        [self addChild:_myWallLeft];
    
    _myWallR = [[SKSpriteNode alloc]initWithColor:[SKColor lightGrayColor] size:CGSizeMake(10, 1150)];
    _myWallR.position = CGPointMake(315, 0);
    _myWallR.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_myWallR.size];
    [_myWallR.physicsBody setDynamic:NO];
    
    [self addChild:_myWallR];
    
//    _myWallB = [[SKSpriteNode alloc]initWithColor:[SKColor lightGrayColor] size:CGSizeMake(250, 10)];
//    _myWallB.position = CGPointMake(225, 200);
//    _myWallB.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_myWallR.size];
//    [_myWallB.physicsBody setDynamic:NO];
//    
//    [self addChild:_myWallB];
    }


-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.scaleMode = SKSceneScaleModeAspectFit;
       // self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];
        [self.physicsBody setRestitution:1];
        
        
        [self spawnSquares];
        
        [self activateJointRope];
//       [self makeShelf];
     
        
        [self makeWall];
        
        [self makeAvoid];
        
        self.physicsWorld.gravity = CGVectorMake(0, 1);

    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
        if (_mySquare8.physicsBody.dynamic) {
    
            [_mySquare8.physicsBody setDynamic:NO];

            _myCircle.color = [SKColor blueColor];
            _mySquare2.color = [SKColor grayColor];
            _mySquare3.color = [SKColor grayColor];
            _mySquare4.color = [SKColor grayColor];
            _mySquare5.color = [SKColor grayColor];
            _mySquare6.color = [SKColor grayColor];
            _mySquare7.color = [SKColor grayColor];
            _mySquare8.color = [SKColor grayColor];
 
    
        }
    
        for (UITouch *touch in touches) {
            CGPoint location = [touch locationInNode:self];
            
            if (_mySquare8.position.x < location.x + 25 && _mySquare8.position.x > location.x - 25 &&
            
              _mySquare8.position.y < location.y + 25 && _mySquare8.position.y > location.y - 25) {
                [_mySquare8 setPosition:CGPointMake(location.x, location.y)];
            }
            else{

            }
    
        }
    
    
    
    
//    if (_mySquare8.physicsBody.dynamic) {
//        
//        [_mySquare8.physicsBody setDynamic:NO];
//        
//        
//        
//        
//        _myCircle.color = [SKColor blueColor];
//        _mySquare2.color = [SKColor grayColor];
//        _mySquare3.color = [SKColor grayColor];
//        _mySquare4.color = [SKColor grayColor];
//        _mySquare5.color = [SKColor grayColor];
//        _mySquare6.color = [SKColor grayColor];
//        _mySquare7.color = [SKColor grayColor];
//        _mySquare8.color = [SKColor grayColor];
//
//
//        
//    }
//    
//    for (UITouch *touch in touches) {
//        CGPoint location = [touch locationInNode:self];
//        [_mySquare8 setPosition:CGPointMake(location.x, location.y)];
//        [_mySquare7 setPosition:CGPointMake(location.x, location.y+34)];
//        [_mySquare6 setPosition:CGPointMake(location.x, location.y+45)];
//        [_mySquare5 setPosition:CGPointMake(location.x, location.y+58)];
//        [_mySquare4 setPosition:CGPointMake(location.x, location.y+60)];
//        [_mySquare3 setPosition:CGPointMake(location.x, location.y+62)];
//        [_mySquare2 setPosition:CGPointMake(location.x, location.y+75)];
//        [_myCircle setPosition:CGPointMake(location.x, location.y+90)];
//
//
//        
//        
//    
//        // [_mySquare1.physicsBody setDynamic:NO];
//        //  [_mySquare2.physicsBody setDynamic:NO];
//        
//        
//        
//        
//    }

}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    
    
    
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        [_mySquare8 setPosition:location];
        
    }
}

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event  {
    
    if (!_mySquare8.physicsBody.dynamic) {
        [_mySquare8.physicsBody setDynamic:YES];
    }
    //  [_mySquare1.physicsBody setDynamic:YES];
    //  [_mySquare2.physicsBody setDynamic:YES];
    _myCircle.color = [SKColor greenColor];
    _mySquare2.color = [SKColor grayColor];
    _mySquare3.color = [SKColor grayColor];
    _mySquare4.color = [SKColor grayColor];
    _mySquare5.color = [SKColor grayColor];
    _mySquare6.color = [SKColor grayColor];
    _mySquare7.color = [SKColor grayColor];
    _mySquare8.color = [SKColor grayColor];
    
    
}

-(void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
    
    if (!_mySquare8.physicsBody.dynamic) {
        [_mySquare8.physicsBody setDynamic:YES];
    }
    //  [_mySquare1.physicsBody setDynamic:YES];
    //  [_mySquare2.physicsBody setDynamic:YES];
    
}



-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
    
    //FOR THE AVOID SQUARE
    if (_myAvoid.position.y > 550) {
        _myAvoid.position = CGPointMake(200, -30);
        _myAvoid.physicsBody.velocity = CGVectorMake(0, 0);
    }
    
    
    //FOR THE AVOID SQUARE
    if (_myAvoid1.position.y > 550) {
        _myAvoid1.position = CGPointMake(80, -30);
        _myAvoid1.physicsBody.velocity = CGVectorMake(0, 0);
    }

}

@end

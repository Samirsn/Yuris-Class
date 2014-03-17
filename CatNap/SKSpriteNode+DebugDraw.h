//
//  SKSpriteNode+DebugDraw.h
//  CatNap
//
//  Created by Samir Naimi on 3/16/14.
//  Copyright (c) 2014 Samir Naimi. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface SKSpriteNode (DebugDraw)


- (void)attachDebugRectWithSize:(CGSize)s;
- (void)attachDebugFrameFromPath:(CGPathRef)bodyPath;

@end

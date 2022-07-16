//
//  MapboxNavigation.m
//  woosher
//
//  Created by Polyrion Inc on 15/07/2022.
//

#import <Foundation/Foundation.h>
#import "React/RCTBridgeModule.h"

@interface RCT_EXTERN_REMAP_MODULE(RNMapboxNavigation, MapboxNavigation, NSObject)
  RCT_EXTERN_METHOD(takeMeToDestination)
@end

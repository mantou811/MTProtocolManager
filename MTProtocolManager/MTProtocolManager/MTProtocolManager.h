//
//  MTProtocolManager.h
//  MTProtocolManager
//
//  Created by 森 on 2017/12/27.
//  Copyright © 2017年 Za. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MTProtocolManager : NSObject
+ (void)registServiceProvide:(id)provide forProtocol:(Protocol*)protocol;

+ (id)serviceProvideForProtocol:(Protocol *)protocol;
@end

//
//  MTProtocolManager.m
//  MTProtocolManager
//
//  Created by 森 on 2017/12/27.
//  Copyright © 2017年 Za. All rights reserved.
//

#import "MTProtocolManager.h"
@interface MTProtocolManager ()

@property (nonatomic, strong) NSMutableDictionary *serviceProvideSource;
@end

@implementation MTProtocolManager

+ (MTProtocolManager *)sharedInstance
{
    static MTProtocolManager * instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _serviceProvideSource = [[NSMutableDictionary alloc] init];
    }
    return self;
}

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol*)protocol
{
    if (provide == nil || protocol == nil)
    return;
    [[self sharedInstance].serviceProvideSource setObject:provide forKey:NSStringFromProtocol(protocol)];
}

+ (id)serviceProvideForProtocol:(Protocol *)protocol
{
    return [[self sharedInstance].serviceProvideSource objectForKey:NSStringFromProtocol(protocol)];
}


@end

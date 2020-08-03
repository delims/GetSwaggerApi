//
//  TagModel.m
//  GetSwagger
//
//  Created by delims on 2020/7/24.
//  Copyright © 2020 delims. All rights reserved.
//

#import "TagModel.h"

@implementation TagModel

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"desc": @"description"};
}
- (NSMutableArray *)paths
{
    if (!_paths) {
        _paths = NSMutableArray.array;
    }
    return _paths;
}
@end

@implementation PathModel

+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"parameters" : [ParamModel class],
    };
}

@end

@implementation MethodModel

+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"parameters" : [ParamModel class],
    };
}

@end

@implementation ParamModel

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{
        @"desc": @"description", };
}
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"schema" : @"SchemaModel",
    };
}

@end


@implementation SchemaModel

+ (NSDictionary *)modelCustomPropertyMapper {
return @{
    @"desc": @"description"};
}

@end

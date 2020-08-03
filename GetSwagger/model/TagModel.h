//
//  TagModel.h
//  GetSwagger
//
//  Created by delims on 2020/7/24.
//  Copyright © 2020 delims. All rights reserved.
//

#import <Foundation/Foundation.h>
@class PathModel,MethodModel,ParamModel,SchemaModel;

NS_ASSUME_NONNULL_BEGIN

@interface TagModel : NSObject

@property (nonatomic,copy) NSString    *name;
@property (nonatomic,copy) NSString    *desc;
@property (nonatomic,strong) NSMutableArray   *paths;

@end

@interface PathModel : NSObject

@property (nonatomic,copy) NSString    *key;
@property (nonatomic,copy) NSString    *path;
@property (nonatomic,copy) NSString    *tag;
@property (nonatomic,copy) NSString    *summary;
@property (nonatomic,copy) NSString    *method;
@property (nonatomic,strong) NSArray     *parameters;
@property (nonatomic,strong) NSDictionary *map; //大字典
@property (nonatomic,copy) NSString    *requestBodyDesc;


@end

@interface MethodModel : NSObject

@property (nonatomic,copy) NSString    *name;
@property (nonatomic,copy) NSString    *tag;
@property (nonatomic,copy) NSString    *summary;
@property (nonatomic,copy) NSMutableArray     *method;
@property (nonatomic,strong) NSArray <PathModel*>     *parameters;

@end

@interface ParamModel : NSObject

@property (nonatomic,copy) NSString    *name;
@property (nonatomic,copy) NSString    *in;
@property (nonatomic,copy) NSString    *desc;
@property (nonatomic,assign) NSInteger  required;
@property (nonatomic,strong) SchemaModel *schema;

@end

@interface SchemaModel : NSObject
@property (nonatomic,copy) NSString    *type;
@property (nonatomic,copy) NSString    *desc;
@property (nonatomic,copy) NSString    *$ref;
@property (nonatomic,assign) NSInteger  nullable;

@end

NS_ASSUME_NONNULL_END



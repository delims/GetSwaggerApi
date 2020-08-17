//
//  main.m
//  GetSwagger
//
//  Created by delims on 2020/7/24.
//  Copyright © 2020 delims. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+YYModel.h"
#import "TagModel.h"

NSString *typeStringForPath(NSDictionary *map, NSString* path)
{
    NSArray *keys = [path componentsSeparatedByString:@"/"];
    NSDictionary *dict = map;
    for (NSString *key in keys) {
        if ([key containsString:@"#"]) continue;
        if (key.length == 0) continue;
        if ([dict isKindOfClass:NSDictionary.class] == NO) continue;
        dict = [dict objectForKey:key];
    }
    
    if ([dict isKindOfClass:NSDictionary.class]) {
        return [dict objectForKey:@"type"];
    }
    return @"";
}

NSDictionary *dictForPath(NSDictionary *map, NSString* path)
{
    NSArray *keys = [path componentsSeparatedByString:@"/"];
    NSDictionary *dict = map;
    for (NSString *key in keys) {
        if ([key containsString:@"#"]) continue;
        if (key.length == 0) continue;
        if ([dict isKindOfClass:NSDictionary.class] == NO) continue;
        dict = [dict objectForKey:key];
    }
    return dict;
}

NSString *spaceString(NSUInteger num)
{
    NSMutableString *string = @"".mutableCopy;
    for (int i = 0; i < num; i ++) {
        [string appendString:@" "];
    }
    return string.copy;
}

void validPath(NSString *path)
{
    NSData *data = [path dataUsingEncoding:NSUTF8StringEncoding];
//    const void *p = data.bytes;
    for (int i = 0; i < data.length; i ++) {
        uint8_t a;
        [data getBytes:&a range:NSMakeRange(i, 1)];
        if (a > 127) {
            NSLog(@">>>>>> 有内鬼 >>>>>>>%@",path);
            break;
        }
    }
}

NSString *pathToApiKey(NSString *key)
{
    if (key.length == 0) return @"";
    key = [key stringByReplacingOccurrencesOfString:@"{" withString:@""];
    key = [key stringByReplacingOccurrencesOfString:@"}" withString:@""];
    NSArray *array = [key componentsSeparatedByString:@"/"];
    NSMutableArray *upperArray = NSMutableArray.array;
    for (int i = 0; i < array.count;  i++) {
        NSString *comp = [array objectAtIndex:i];
        if (comp.length) {
            comp = [[comp substringToIndex:1].uppercaseString stringByAppendingString:[comp substringFromIndex:1]];
        }
        if (i == 0) {
            comp = [@"k" stringByAppendingString:comp];
        }
        [upperArray addObject:comp];
    }
    return [upperArray componentsJoinedByString:@""];
}

NSDictionary *getMapFromURL(NSString *urlString)
{
    NSURLSession *session = NSURLSession.sharedSession;
    NSURL *URL = [NSURL URLWithString:urlString];
    dispatch_group_t group = dispatch_group_create();
    dispatch_group_enter(group);
    __block NSDictionary *map = nil;
    NSURLSessionDataTask *task = [session dataTaskWithURL:URL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            printf("%s\n",[error.localizedFailureReason cStringUsingEncoding:NSUTF8StringEncoding]);
            exit(0);
        } else {
            map = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
//            paths = [map objectForKey:@"paths"];
        }
        dispatch_group_leave(group);
    }];
    [task resume];
    dispatch_group_wait(group, DISPATCH_TIME_FOREVER);
    return map;
}

NSString *h_file_header(void)
{
    NSMutableString *h_fileString = NSMutableString.string;
    NSDateFormatter *formatter = NSDateFormatter.new;
    [formatter setDateFormat:@"yyyy/MM/dd"];
    NSString *dateString = [formatter stringFromDate:NSDate.date];
    [h_fileString appendFormat:@"//\n//  NetworkApi.h\n//  GetSwagger\n//\n//  Created by delims on %@.\n//  Copyright © %@ delims. All rights reserved.\n\n",dateString, [dateString substringToIndex:4]];
    [h_fileString appendFormat:@"#import <Foundation/Foundation.h>\n\n"];
    return h_fileString;
}

NSString *m_file_header(void)
{
    NSMutableString *m_fileString = NSMutableString.string;
    NSDateFormatter *formatter = NSDateFormatter.new;
    [formatter setDateFormat:@"yyyy/MM/dd"];
    NSString *dateString = [formatter stringFromDate:NSDate.date];
    [m_fileString appendFormat:@"//\n//  NetworkApi.m\n//  GetSwagger\n//\n//  Created by delims on %@.\n//  Copyright © %@ delims. All rights reserved.\n\n",dateString, [dateString substringToIndex:4]];
    [m_fileString appendFormat:@"#import \"NetworkApi.h\"\n\n"];
    return m_fileString;
}

void saveToFile(NSDictionary* tagModelsMap,NSString *filePath, NSMutableString **h_file_content, NSMutableString **m_file_content)
{
    NSMutableString *m_fileString = NSMutableString.string;
    NSMutableString *h_fileString = NSMutableString.string;
    for (TagModel *tag in tagModelsMap.allValues) {
        [m_fileString appendFormat:@"#pragma mark %@ %@ \n", tag.name,tag.desc];
        [h_fileString appendFormat:@"#pragma mark %@ %@ \n", tag.name,tag.desc];

        for (PathModel *path in tag.paths) {
            [m_fileString appendFormat:@"/** \n"];
            [m_fileString appendFormat:@"@brief %@\n",path.summary];
            [m_fileString appendFormat:@"@code\n"];
            [m_fileString appendFormat:@"请求路径: %@\n",
             [[path.path stringByReplacingOccurrencesOfString:@"\"" withString:@""]
                         stringByReplacingOccurrencesOfString:@"@" withString:@""]];
            [m_fileString appendFormat:@"请求方法: %@\n",path.method];
            
            if (path.parameters.count) {
                NSUInteger maxNameLength = 0;
                NSUInteger maxtypeLength = 0;
                [m_fileString appendFormat:@"参数列表:\n\n"];
                for (ParamModel *paramModel in path.parameters) {
                    if (maxNameLength < paramModel.name.length) {
                        maxNameLength = paramModel.name.length;
                    }
                    if (paramModel.schema.type.length == 0) {
                        paramModel.schema.type = typeStringForPath(path.map,paramModel.schema.$ref);
                    }
                    if (maxtypeLength < paramModel.schema.type.length) {
                        maxtypeLength = paramModel.schema.type.length;
                    }
                }
                
                for (ParamModel *paramModel in path.parameters) {
                    [m_fileString appendFormat:@"%@ %@%@ %@%@ \n",
                     paramModel.name,
                     spaceString(maxNameLength - paramModel.name.length),
                     paramModel.schema.type,
                     spaceString(maxtypeLength - paramModel.schema.type.length),
                     paramModel.desc];
                }
            }
            [m_fileString appendFormat:@"@endcode\n"];
            
            [m_fileString appendFormat:@"*/ \n"];
            [m_fileString appendFormat:@"extern NSString * const %@;\n\n",path.key];
            [h_fileString appendFormat:@"static NSString * const %@ = %@; //%@\n",path.key,path.path,path.summary];
        }
        [h_fileString appendFormat:@"\n"];
        [m_fileString appendFormat:@"\n"];
    }
    
    [*h_file_content appendString:h_fileString];
    [*m_file_content appendString:m_fileString];
}


int main(int argc, const char * argv[]) {
    
    const char *path = argv[0];
    
    NSString *currentPath = [NSString.alloc initWithCString:path encoding:NSUTF8StringEncoding];
    
    NSLog(@"%@",currentPath);
    currentPath = [currentPath stringByDeletingLastPathComponent];
    NSString *swaggerPath = [currentPath stringByAppendingPathComponent:@"swagger.txt"];
    
    if ([NSFileManager.defaultManager fileExistsAtPath:swaggerPath] == NO) {
        printf("no \"swagger.txt\" file found in current path. \n");
        return 1;
    }
    
    NSError *error = nil;
    NSString *contentString = [NSString.alloc initWithContentsOfFile:swaggerPath encoding:NSUTF8StringEncoding error:&error];
    
    if (error) {
        printf("%s \n",[error.localizedFailureReason cStringUsingEncoding:NSString.defaultCStringEncoding]);
        return 1;
    }
//    if ([json isKindOfClass:NSArray.class] == NO) {
//        printf("root object is not array in \"swagger.json\" file");
//        return 1;
//    }
    NSArray *components = [contentString componentsSeparatedByString:@"\n"];
    NSMutableArray *json = NSMutableArray.array;
    NSString *filePath = nil;
    for (NSString *string in components) {
        NSString *tempString = [string stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceCharacterSet];
//        tempString = [tempString stringByReplacingOccurrencesOfString:@"," withString:@""];
        if ([tempString hasPrefix:@"http"]) {
            [json addObject:tempString];
        } else if ([tempString hasPrefix:@"/"]) {
            filePath = tempString;
        }
    }

    @autoreleasepool {
        // insert code here...
        NSArray *URLStringArray = json;
        [NSString stringWithFormat:@""];
        
        printf("swagger api updating...\n");
        NSInteger count = 0;
        
        NSMutableString *m_fileString = m_file_header().mutableCopy;
        NSMutableString *h_fileString = h_file_header().mutableCopy;
        
        for (NSString *url in URLStringArray) {
            NSMutableDictionary *tagModelsMap = NSMutableDictionary.dictionary;

            NSDictionary *map = getMapFromURL(url);
            
            NSDictionary *paths = [map objectForKey:@"paths"];
            NSArray *tags = [map objectForKey:@"tags"];
            NSString *title = map[@"info"][@"title"];
            
            printf("%s \n",[title cStringUsingEncoding:NSUTF8StringEncoding]);
            
            NSMutableString *allApiString = NSMutableString.new;
            //以tag的名字把tag保存到一个字典里面。
            for (NSDictionary* tag in tags) {
                TagModel *tagModel = [TagModel modelWithJSON:tag];
                [tagModelsMap setObject:tagModel forKey:tagModel.name];
            }
            for (NSString *path in paths.allKeys) {
                NSDictionary *pathContent = [paths objectForKey:path];
                NSArray *allMethodKeys = pathContent.allKeys;
                BOOL hasGet = [allMethodKeys containsObject:@"get"];
                NSString *firstMethod = allMethodKeys.firstObject;
                NSString *method_free = hasGet ? @"get" : firstMethod;
                
                for (NSString *method in pathContent.allKeys) {
                    NSDictionary *methodContent = [pathContent objectForKey:method];
                    NSString *summary = [methodContent objectForKey:@"summary"];
                    NSArray *parameters = [methodContent objectForKey:@"parameters"];
                    NSMutableArray *post_params = NSMutableArray.array;
                    NSString *requestBodyDesc = nil;
                    if ([method isEqualToString:@"post"] || [method isEqualToString:@"patch"] ) {
                        NSDictionary *requestBody = methodContent[@"requestBody"];
                        requestBodyDesc = requestBody[@"description"];
                        NSString *keyPath = requestBody[@"content"][@"application/json"][@"schema"][@"$ref"];
                        if (keyPath.length) {
                            NSDictionary *entity = dictForPath(map, keyPath);
                            NSDictionary *properties = entity[@"properties"];
                            for (NSString *key in properties.allKeys) {
                                NSDictionary *value = properties[key];
                                if ([value.allKeys containsObject:@"$ref"]) {
                                    NSString *keyPath = value[@"$ref"];
                                    value = dictForPath(map, keyPath);
                                }
                                
                                ParamModel *model = ParamModel.new;
                                model.schema = SchemaModel.new;
                                model.name = key;
                                model.schema.type = value[@"type"];
                                model.desc = value[@"description"];
                                [post_params addObject:model];
                            }
                            
                        }
                    }
                    
                    NSArray *paramModels = [NSArray modelArrayWithClass:ParamModel.class json:parameters];
                    if ([method isEqualToString:@"post"] || [method isEqualToString:@"patch"] ) {
                        paramModels = post_params;
                    } else {
                        paramModels = [NSArray modelArrayWithClass:ParamModel.class json:parameters];
                    }
                    
                    NSArray *tags = [methodContent objectForKey:@"tags"];
                    
                    for (NSString *tagName in tags) {
                        TagModel *tagModel = [tagModelsMap objectForKey:tagName]; //取出tagModel
                        PathModel *pathModel = PathModel.new;
                        validPath(path);
                        NSString *key = pathToApiKey(path);
                        if ([method isEqualToString:method_free]) {
                            pathModel.key = key;
                        } else {
                            pathModel.key = [key stringByAppendingFormat:@"_%@",method];
                        }
                        pathModel.path = [NSString stringWithFormat:@"@\"%@\"",path];
                        pathModel.summary = summary;
                        pathModel.method = method;
                        pathModel.parameters = paramModels;
                        pathModel.map = map;
                        pathModel.requestBodyDesc = requestBodyDesc;
                        [tagModel.paths addObject:pathModel];
                        
                        count ++;
                    }
//                    NSLog(@"%@ %@ %@",path,method,summary);
//                    printf("%s %s %s\n",[path cStringUsingEncoding:NSUTF8StringEncoding],
//                           [method cStringUsingEncoding:NSUTF8StringEncoding],
//                           [summary cStringUsingEncoding:NSUTF8StringEncoding]
//                           );
                    [allApiString appendFormat:@"static NSString *const \"%@\" %@ %@ \n",path,method,summary];
                }
            }
//            saveToFile(tagModelsMap,filePath,);
            saveToFile(tagModelsMap, filePath, &h_fileString, &m_fileString);
        }
        NSData *m_textData = [m_fileString dataUsingEncoding:NSUTF8StringEncoding];
        NSData *h_textData = [h_fileString dataUsingEncoding:NSUTF8StringEncoding];
        
        NSString *m_filePath = [NSString stringWithFormat:@"%@.m",filePath];
        NSString *h_filePath = [NSString stringWithFormat:@"%@.h",filePath];
        
        [m_textData writeToFile:m_filePath atomically:YES];
        [h_textData writeToFile:h_filePath atomically:YES];
        printf("update done. \n%li api\n",(long)count);
    }
    return 0;
}




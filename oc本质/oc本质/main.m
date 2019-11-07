//
//  main.m
//  oc本质
//
//  Created by huangjunhuang on 2019/3/21.
//  Copyright © 2019 MoFU. All rights reserved.
//

#import "AppDelegate.h"
#import <objc/runtime.h>
#import "malloc/malloc.h"




@interface Person : NSObject{
    //Class isa; 8
    int _no;
    int _age;
    int _aa;
    int _bb;
    int _cc;
    int _dd;
    int _ee;
    int _ff;
}// 40 48

@end

@implementation Person

@end

@interface Student : Person{
    //Class isa; 8
    int a1;
    int a2;
    int a3;
    int a4;
}//48 48

@end

@implementation Student

@end

int main(int argc, char * argv[]) {
    @autoreleasepool {
        // 分配16个字节，实际使用8个字节
//        NSObject *obj = [[NSObject alloc] init];
        
        // 获得nsobject类的实例对象的大小 8
//        NSLog(@"%zd",class_getInstanceSize([NSObject class]));
        
        // 获得obj指针所指向的实例对象的大小 16
//        NSLog(@"%zd", malloc_size(CFBridgingRetain(obj)));
        
//        Person *p = [[Person alloc] init];
//        NSLog(@"%zd",class_getInstanceSize([Person class])); // 8的倍数
//        NSLog(@"%zd", malloc_size(CFBridgingRetain(p))); // 16的倍数
//
//        Student *stu = [[Student alloc] init];
//        NSLog(@"%zd",class_getInstanceSize([Student class]));
//        NSLog(@"%zd", malloc_size(CFBridgingRetain(stu)));
//
//
//        // 类对象
//        Class ocjClass1 = [NSObject class];
//
        
        
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}

/*
    obj 基于c++的结构体

    架构：模拟器(i386) 32bit(armv7) 64bit(arm64)
 
    指针在64位占8个字节，32位4个字节
 
    分配了16个字节，使用了8个字节
 
    内存对齐：结构体的大小必须是最大成员大小的倍数
 
    oc对象有三种：instance实类对象，class类对象，meta-class元类对象
 
    实例对象包括：只有成员变量，没有方法
 
 
 
 
 */


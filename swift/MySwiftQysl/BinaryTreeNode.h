//
//  BinaryTreeNode.h
//  MySwiftQysl
//
//  Created by user on 17/1/4.
//  Copyright © 2017年 HuLiYin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BinaryTreeNode : NSObject
/**
 *  值
 */
@property (nonatomic, assign) NSInteger value;
/**
 *  左节点
 */
@property (nonatomic, strong) BinaryTreeNode *leftNode;
/**
 *  右节点
 */
@property (nonatomic, strong) BinaryTreeNode *rightNode;
@end

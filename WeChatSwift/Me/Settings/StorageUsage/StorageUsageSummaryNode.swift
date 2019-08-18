//
//  StorageUsageSummaryNode.swift
//  WeChatSwift
//
//  Created by xu.shuifeng on 2019/8/16.
//  Copyright © 2019 alexiscn. All rights reserved.
//

import AsyncDisplayKit

class StorageUsageSummaryNode: ASDisplayNode {
    
    override init() {
        super.init()
    }
    
    override func didLoad() {
        super.didLoad()
        backgroundColor = .white
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        return ASLayoutSpec()
    }
    
}

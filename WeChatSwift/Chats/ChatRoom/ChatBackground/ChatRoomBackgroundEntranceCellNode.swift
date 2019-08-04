//
//  ChatRoomBackgroundEntranceCellNode.swift
//  WeChatSwift
//
//  Created by xushuifeng on 2019/8/4.
//  Copyright © 2019 alexiscn. All rights reserved.
//

import AsyncDisplayKit

class ChatRoomBackgroundEntranceCellNode: ASCellNode {
    
    private let titleNode = ASTextNode()
    
    private let arrowNode = ASImageNode()
    
    private let action: ChatRoomBackgroundAction
    
    init(action: ChatRoomBackgroundAction) {
        self.action = action
        
        super.init()
        
        automaticallyManagesSubnodes = true
        
        titleNode.attributedText = action.attributedStringForTitle()
        
        arrowNode.image = UIImage.SVGImage(named: "icons_outlined_arrow")
    }
    
    override func didLoad() {
        super.didLoad()
        backgroundColor = Colors.white
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        
        arrowNode.style.preferredSize = CGSize(width: 12, height: 24)
        
        titleNode.style.flexGrow = 1.0
        
        let stack = ASStackLayoutSpec.horizontal()
        stack.children = [titleNode, arrowNode]
        
        let insets = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
        
        return ASInsetLayoutSpec(insets: insets, child: stack)
    }
    
}

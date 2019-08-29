//
//  ChatRoomViewController+Menu.swift
//  WeChatSwift
//
//  Created by xu.shuifeng on 2019/8/29.
//  Copyright © 2019 alexiscn. All rights reserved.
//

import AsyncDisplayKit

extension ChatRoomViewController {
    
    internal func showMenus(_ menus: [MessageMenuAction], targetRect: CGRect, targetView: UIView) {
        let menuController = UIMenuController()
        menuController.arrowDirection = .down
        var menuItems: [UIMenuItem] = []
        for menu in menus {
            let selector: Selector
            switch menu {
            case .copy:
                selector = #selector(onMenuActionCopy)
            case .delete:
                selector = #selector(onMenuActionDelete)
            case .edit:
                selector = #selector(onMenuActionEdit)
            case .multiSelect:
                selector = #selector(onMenuActionMultiSelect)
            case .addToSticker:
                selector = #selector(onMenuActionAddToSticker)
            case .followShoot:
                selector = #selector(onMenuActionFollowShot)
            case .forward:
                selector = #selector(onMenuActionForward)
            case .recall:
                selector = #selector(onMenuActionRecall)
            case .remind:
                selector = #selector(onMenuActionRemind)
            case .addFavorite:
                selector = #selector(onMenuActionAddFavorite)
            case .removeFavorite:
                selector = #selector(onMenuActionRemoveFavorite)
            case .translate:
                selector = #selector(onMenuActionTranslate)
            case .viewStickerAlbum:
                selector = #selector(onMenuActionViewStickerAlbum)
            }
            
            let menuItem = UIMenuItem(title: menu.title, action: selector)
            menuItems.append(menuItem)
        }
        menuController.menuItems = menuItems
        menuController.setTargetRect(targetRect, in: targetView)
        menuController.setMenuVisible(true, animated: true)
    }
    
    @objc private func onMenuActionCopy() {
        guard let message = menuMessage else {
            return
        }
        switch message.content {
        case .text(let text):
            UIPasteboard.general.string = text
        default:
            break
        }
        menuMessage = nil
    }
    
    @objc private func onMenuActionEdit() {
        
    }
    
    @objc private func onMenuActionDelete() {
        
    }
    
    @objc private func onMenuActionMultiSelect() {
        
    }
    
    @objc private func onMenuActionAddToSticker() {
        
    }
    
    @objc private func onMenuActionFollowShot() {
        
    }
    
    @objc private func onMenuActionForward() {
        
    }
    
    @objc private func onMenuActionRecall() {
        
    }
    
    @objc private func onMenuActionRemind() {
        
    }
    
    @objc private func onMenuActionAddFavorite() {
        
    }
    
    @objc private func onMenuActionRemoveFavorite() {
        
    }
    
    @objc private func onMenuActionTranslate() {
        
    }
    
    @objc private func onMenuActionViewStickerAlbum() {
        
    }
    
    
    
}
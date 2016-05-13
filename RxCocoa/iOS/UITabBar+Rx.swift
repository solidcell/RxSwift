//
//  UITabBar+Rx.swift
//  Rx
//
//  Created by Jesse Farless on 5/13/16.
//  Copyright © 2016 Krunoslav Zaher. All rights reserved.
//

#if os(iOS) || os(tvOS)
import Foundation
import UIKit

#if !RX_NO_MODULE
import RxSwift
#endif

extension UITabBar {

    /**
     Bindable sink for `barStyle` property.
     */
    public var rx_barStyle: AnyObserver<UIBarStyle> {
        return UIBindingObserver(UIElement: self) { tabBar, barStyle in
            tabBar.barStyle = barStyle
        }.asObserver()
    }

    /**
     Bindable sink for `translucent` property.
     */
    public var rx_translucent: AnyObserver<Bool> {
        return UIBindingObserver(UIElement: self) { tabBar, translucent in
            tabBar.translucent = translucent
        }.asObserver()
    }

    /**
     Bindable sink for `barTintColor` property.
     */
    public var rx_barTintColor: AnyObserver<UIColor?> {
        return UIBindingObserver(UIElement: self) { tabBar, barTintColor in
            tabBar.barTintColor = barTintColor
        }.asObserver()
    }

    /**
     Bindable sink for `itemPositioning` property.
     */
    public var rx_itemPositioning: AnyObserver<UITabBarItemPositioning> {
        return UIBindingObserver(UIElement: self) { tabBar, itemPositioning in
            tabBar.itemPositioning = itemPositioning
        }.asObserver()
    }

    /**
     Bindable sink for `itemSpacing` property.
     */
    public var rx_itemSpacing: AnyObserver<CGFloat> {
        return UIBindingObserver(UIElement: self) { tabBar, itemSpacing in
            tabBar.itemSpacing = itemSpacing
        }.asObserver()
    }

}

#endif
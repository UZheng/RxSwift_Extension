//
//  UIImageView+HBRx.swift
//
//  Created by liuhongbao on 2018/3/22.
//  Copyright © 2018年 HiCent. All rights reserved.
//

// RxSwift对UIImageView的扩展.这里依赖Kingfisher框架
//用法:
/**
  .bind(to: imageView.rx.URLImage) // Observable 必须是String类型
*/

import RxSwift
import UIKit
import RxCocoa
import Kingfisher

extension Reactive where Base: UIImageView {

    public var URLImage: Binder<String> {
        return Binder(base) { imageView, URLString in

            let url = URL(string: URLString)
            if let url = url{
                imageView.kf.setImage(with: url, placeholder: nil, options: [.transition(.fade(1))], progressBlock: nil, completionHandler: nil)
            }

        }
    }
}

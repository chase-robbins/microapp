//
//  ViewRouter.swift
//
//
//  Created by Chase Robbins on 9/6/20.
//

import Foundation
import Combine
import SwiftUI

class ViewRouter: ObservableObject {
    let objectWillChange = PassthroughSubject<ViewRouter,Never>()

    var currentPage: String = "dashboard" {
        didSet {
            withAnimation{
                objectWillChange.send(self)
            }
        }
    }

}

//
//  GesturePreviewViewModel.swift
//  GestureAnimatorDemoApp
//
//  Created by Syed Zia ur Rehman on 19/04/2025.
//

import Foundation
import GestureAnimator

final class GesturePreviewViewModel: ObservableObject {
    @Published var effect: GestureEffectType = .zoom

    var zoomVM = ZoomViewModel()
    var dragVM = DragViewModel()
    var rotateVM = RotateViewModel()
    var morphVM = MorphViewModel()
    var customVM = CustomPathViewModel()
}

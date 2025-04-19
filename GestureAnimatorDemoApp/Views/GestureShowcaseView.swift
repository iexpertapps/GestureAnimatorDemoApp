//
//  GestureShowcaseView.swift
//  GestureAnimatorDemoApp
//
//  Created by Syed Zia ur Rehman on 19/04/2025.
//

import SwiftUI
import GestureAnimator

struct GestureShowcaseView: View {
    @StateObject private var viewModel = GesturePreviewViewModel()

    var body: some View {
        VStack(spacing: 20) {
            Picker("Effect", selection: $viewModel.effect) {
                ForEach(GestureEffectType.allCases, id: \.self) {
                    Text($0.rawValue.capitalized)
                }
            }
            .pickerStyle(.segmented)
            .padding()

            Spacer()

            ZStack {
                switch viewModel.effect {
                case .zoom:
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 100, height: 100)
                        .gestureZoom(scale: $viewModel.zoomVM.scale)

                case .drag:
                    Circle()
                        .fill(.orange)
                        .frame(width: 100, height: 100)
                        .gestureDrag(offset: $viewModel.dragVM.offset)

                case .rotate:
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.green)
                        .frame(width: 100, height: 100)
                        .gestureRotate(angle: $viewModel.rotateVM.angle)

                case .morph:
                    MorphingShape(progress: viewModel.morphVM.progress, style: .capsuleToStar)
                        .fill(.purple)
                        .frame(width: 150, height: 150)
                        .gestureMorph(progress: $viewModel.morphVM.progress)

                case .customPath:
                    Circle()
                        .fill(.pink)
                        .frame(width: 80, height: 80)
                        .gestureCustomPath(
                            progress: $viewModel.customVM.value,
                            path: { progress in
                                let angle = 2 * .pi * progress
                                let radius: CGFloat = 100
                                return CGPoint(
                                    x: cos(angle) * radius,
                                    y: sin(angle) * radius
                                )
                            }
                        )

                }
            }
            .animation(.spring(), value: viewModel.effect)

            Spacer()
        }
        .padding()
    }
}


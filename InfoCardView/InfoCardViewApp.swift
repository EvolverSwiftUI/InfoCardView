//
//  InfoCardViewApp.swift
//  InfoCardView
//
//  Created by Sivaramaiah NAKKA on 31/01/23.
//

import SwiftUI

@main
struct InfoCardViewApp: App {
    var body: some Scene {
        WindowGroup {
            let viewModel = InfoCardView.ViewModel(title: "Lock In Production", imageName: "Info")
            InfoCardView(viewModel: viewModel)
                .padding()
        }
    }
}

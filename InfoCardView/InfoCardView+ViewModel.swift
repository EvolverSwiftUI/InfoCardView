//
//  InfoCardView+ViewModel.swift
//  InfoCardView
//
//  Created by Sivaramaiah NAKKA on 31/01/23.
//

import SwiftUI
extension InfoCardView {
    @MainActor class ViewModel: ObservableObject {
        
        @Published var title: String
        @Published var imageName: String
        
        init(title: String, imageName: String) {
            self.title = title
            self.imageName = imageName
        }
        
        func cardTapped() {
            print("card is clicked.")
        }
    }
}


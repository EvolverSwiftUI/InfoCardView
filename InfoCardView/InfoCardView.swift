//
//  InfoCardView.swift
//  InfoCardView
//
//  Created by Sivaramaiah NAKKA on 31/01/23.
//

import SwiftUI

struct InfoCardView: View {
    
    @StateObject var viewModel: Self.ViewModel
    var action: () -> Void
    
    var body: some View {
        HStack {
            Text(viewModel.title)
            Spacer()
            Image(viewModel.imageName)
                .resizable()
                .frame(width: 16, height: 16)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 10)
        .onTapGesture {
            action()
        }
    }
}

struct InfoCardView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        let viewModel = InfoCardView.ViewModel(
            title: "Lock In Production",
            imageName: "Info"
        )
        
        InfoCardView(viewModel: viewModel) {
            print("InfoCardView is Tapped")
        }
        .padding()
        .previewLayout(.sizeThatFits)
    }
}

//
//  ContentView.swift
//  Marathon-SwiftUI-NextTrack
//
//  Created by Sergey Leontiev on 5.12.24..
//

import SwiftUI

struct ContentView: View {
    @State var buttonTapped: Bool = false
    private let imageName = "play.fill"
    
    var body: some View {
        Button {
            guard !buttonTapped else { return }
            withAnimation(.interpolatingSpring(stiffness: 170, damping: 15)) {
                buttonTapped = true
            } completion: {
                buttonTapped = false
            }
        } label: {
            GeometryReader { proxy in
                let size = proxy.size.width / 2
                HStack(alignment: .center, spacing: 0) {
                    Image(systemName: imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: buttonTapped ? size : 0)
                        .opacity(buttonTapped ? 1 : 0)
                    Image(systemName: imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: size)
                    Image(systemName: imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: buttonTapped ? 1 : size)
                        .opacity(buttonTapped ? 0 : 1)
                }.frame(maxHeight: .infinity, alignment: .center)
            }
        }.frame(maxWidth: 80)
    }
}


#Preview {
    ContentView()
}

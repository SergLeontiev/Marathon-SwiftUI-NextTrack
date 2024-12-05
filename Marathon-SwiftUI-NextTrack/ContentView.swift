//
//  ContentView.swift
//  Marathon-SwiftUI-NextTrack
//
//  Created by Sergey Leontiev on 5.12.24..
//

import SwiftUI

struct ContentView: View {
    @State var buttonTapped: Bool = false
    
    var body: some View {
        Button {
            withAnimation(.bouncy) {
                buttonTapped = true
            } completion: {
                buttonTapped = false
            }
        } label: {
            GeometryReader { proxy in
                let size = proxy.size.width / 2
                HStack(alignment: .center, spacing: 0) {
                    Image(systemName: "play.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: buttonTapped ? size : 0)
                        .opacity(buttonTapped ? 1 : 0)
                    Image(systemName: "play.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: size)
                    Image(systemName: "play.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: buttonTapped ? 1 : size)
                        .opacity(buttonTapped ? 0 : 1)
                }.frame(maxHeight: .infinity)
            }.frame(width: 80, alignment: .center)
        }
    }
}


#Preview {
    ContentView()
}

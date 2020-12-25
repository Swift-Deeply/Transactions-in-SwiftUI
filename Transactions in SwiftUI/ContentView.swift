//
//  ContentView.swift
//  Transactions in SwiftUI
//
//  Created by Can Balkaya on 12/25/20.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    @State private var isTapped = false
    
    // MARK: - Life Cycle
    var body: some View {
        Circle()
            .fill(Color.red)
            .offset(y: isTapped ? 200 : -200)
            .animation(.spring())
            .transaction { transaction in
                transaction.disablesAnimations = true
                transaction.animation = .linear
            }
            .onTapGesture {
                isTapped.toggle()
            }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

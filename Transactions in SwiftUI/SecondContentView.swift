//
//  SecondContentView.swift
//  Transactions in SwiftUI
//
//  Created by Can Balkaya on 12/25/20.
//

import SwiftUI

struct SecondContentView: View {
    
    // MARK: - Properties
    @GestureState private var offsetValue: CGSize = .zero
    
    // MARK: - UI Elements
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .offset(offsetValue)
            .gesture(
                DragGesture()
                    .updating($offsetValue) { value, state, transaction in
                        state = value.translation
                        transaction.animation = .interactiveSpring()
                    }
            )
    }
}

struct SecondContentView_Previews: PreviewProvider {
    static var previews: some View {
        SecondContentView()
    }
}

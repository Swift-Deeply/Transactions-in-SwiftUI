//
//  ThirdContentView.swift
//  Transactions in SwiftUI
//
//  Created by Can Balkaya on 12/25/20.
//

import SwiftUI

struct CircleView: View {
    
    // MARK: - Properties
    @Binding var animatedBinding: Bool

    // MARK: - UI Elements
    var body: some View {
        Circle()
            .fill(Color.blue)
            .scaleEffect(animatedBinding ? 0.5 : 1)
            .animation(.spring())
    }
}

struct ThirdContentView: View {
    
    // MARK: - Properties
    @State private var scale = false
    
    private var animatedBinding: Binding<Bool> {
        var transaction = Transaction(animation: .interactiveSpring())
        transaction.disablesAnimations = true
        return $scale.transaction(transaction)
    }

    // MARK: - UI Elements
    var body: some View {
        CircleView(animatedBinding: animatedBinding)
            .onTapGesture {
                scale.toggle()
            }
    }
}

struct ThirdContentView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdContentView()
    }
}

//
//  CreditCardView.swift
//  BankingApp
//
//  Created by Andrea Masturzo on 03/04/22.
//

import SwiftUI

struct CreditCardView: View {
    
    @State private var degrees: Double = 0
    @State private var flipped: Bool = false
    
    
    var body: some View {
        
        TabView {
            /// Credit Card 1
            VStack {
                CreditCard {
                    VStack {
                        Group {
                            if flipped {
                                CreditCardBack()
                            } else {
                                CreditCardFront()
                            }
                        }
                    }.rotation3DEffect(
                        .degrees(degrees),
                        axis: (x: 0.0, y: 1.0, z: 0.0)
                    )
                    
                }
                .onTapGesture {
                    withAnimation {
                        degrees += 180
                        flipped.toggle()
                    }
                }
            } /// Credit Card 1 End
            
            /// Credit Card 2
            VStack {
                CreditCard {
                    
                    VStack {
                        Group {
                            if flipped {
                                CreditCardBack()
                            } else {
                                CreditCardFront()
                            }
                        }
                    }.rotation3DEffect(
                        .degrees(degrees),
                        axis: (x: 0.0, y: 1.0, z: 0.0)
                    )
                    
                }
                .onTapGesture {
                    withAnimation {
                        degrees += 180
                        flipped.toggle()
                    }
                }
            } /// Credit Card 2 End
        } /// TabView End
        .tabViewStyle(.page)
        .indexViewStyle(.page)
        .frame(width: 433, height: 320, alignment: .center)
        
    }
}

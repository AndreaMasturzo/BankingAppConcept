//
//  FloatingTabBar.swift
//  BankingApp
//
//  Created by Andrea Masturzo on 31/03/22.
//

import SwiftUI

struct TabbarButton: View {
    
    @Binding var selected : Int
    var numberSelected: Int
    var image: String
    
    var body: some View {
        Button(action: {
            self.selected = numberSelected
        }) {
            
            Image(systemName: image)
                .foregroundColor(self.selected == 0 ? .black : .gray)
        }
    }
}

struct FloatingTabbar : View {
    
    @Binding var selected : Int
    @State var expand = false
    
    @State var angle = 90.0
    
    var body : some View {
        
        HStack {
            
            Spacer(minLength: 0)
            
            HStack {
                
                if !self.expand {
                    
                    Button(action: {
                        self.expand.toggle()
                    }) {
                        Image(systemName: "ellipsis")
                            .foregroundColor(.black)
                            .padding()
                            .rotationEffect(
                                Angle.degrees(angle))
                    }
                } /// if end
                else {
                    
                    TabbarButton(selected: $selected, numberSelected: 0, image: "person.crop.circle.fill")
                    
                    Spacer()
                    
                    TabbarButton(selected: $selected, numberSelected: 1, image: "building.columns.fill")
                    
                    Spacer()
                    
                    TabbarButton(selected: $selected, numberSelected: 2, image: "arrow.left.arrow.right")
                    
                    Spacer()
                    
                    TabbarButton(selected: $selected, numberSelected: 3, image: "chart.line.uptrend.xyaxis")
                        .padding(.trailing)
                    
                    Button(action: {
                        self.expand.toggle()
                    }) {
                        Image(systemName: "ellipsis")
                            .foregroundColor(.black)
                    }
                } /// else end
            } /// Inner HStack end
            .padding(.vertical,self.expand ? 20 : 8)
            .padding(.horizontal,self.expand ? 35 : 4)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 80))
            .padding(15)
            .shadow(color: .secondary, radius: 2, x: 2, y: 2)
            .animation(.interactiveSpring(response: 0.6, dampingFraction: 0.6, blendDuration: 0.0))
        } /// Outer HStack end
    }
}




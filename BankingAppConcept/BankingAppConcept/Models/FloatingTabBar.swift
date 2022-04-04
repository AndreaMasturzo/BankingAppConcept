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
    var title: String
    
    var body: some View {
        Button(action: {
            self.selected = numberSelected
        }) {
            VStack {
                Image(systemName: image)
                    .foregroundColor(self.selected == numberSelected ? .blue : .gray)
                Text(title)
                    .foregroundColor(self.selected == numberSelected ? .blue : .gray)
                    .font(.footnote)
            }
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
                            .font(.system(size: 20))
                            .foregroundColor(.blue)
                            .padding()
                            .rotationEffect(
                                Angle.degrees(angle))
                    }
                } /// if end
                else {
                    
                    TabbarButton(selected: $selected, numberSelected: 0, image: "person.crop.circle.fill", title: "Account")
                    
                    Spacer()
                    
                    TabbarButton(selected: $selected, numberSelected: 1, image: "building.columns.fill", title: "Home")
                    
                    Spacer()
                    
                    TabbarButton(selected: $selected, numberSelected: 2, image: "arrow.left.arrow.right", title: "Transfers")
                    
                    Spacer()
                    
                    TabbarButton(selected: $selected, numberSelected: 3, image: "chart.line.uptrend.xyaxis", title: "Investments")
                        .padding(.trailing)
                    
                    Spacer()
                    
                    Button(action: {
                        self.expand.toggle()
                    }) {
                        Image(systemName: "ellipsis")
                            .font(.system(size: 20))
                            .foregroundColor(.blue)
                    }
                } /// else end
            } /// Inner HStack end
            .padding(.vertical,self.expand ? 10 : 8)
            .padding(.horizontal,self.expand ? 35 : 4)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 80))
            .padding(15)
            .shadow(color: .secondary, radius: 2, x: 2, y: 2)
            .animation(.interactiveSpring(response: 0.6, dampingFraction: 0.6, blendDuration: 0.0))
        } /// Outer HStack end
    }
}




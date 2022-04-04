//
//  ContentView.swift
//  BankingApp
//
//  Created by Andrea Masturzo on 29/03/22.
//

import SwiftUI


struct ContentView: View {
    
    @State var selected = 1
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor.black
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.lightGray.withAlphaComponent(0.5)
    }
    
    @State private var name: String = ""
    @State private var expires: String = ""
    @State private var cvv: String = ""
    
    @State private var present = true
    
    var body: some View {
        VStack {
            HStack {
                /// Money text
                Text("1294,20 $")
                    .bold()
                    .padding(.leading)
                    .padding(.top, 15)
                    .font(.system(size: 40))
                
                Spacer()
            }
            .padding(.bottom, -50)
            
            CreditCardView()
            
            Spacer()
                .sheet(isPresented: $present) {
                    HalfSheet {
                        ZStack(alignment: .bottom) {
                            ListView()
                            FloatingTabbar(selected: $selected)
                        }
                    }
                    .ignoresSafeArea()
                    .interactiveDismissDisabled()
                }
        } /// VStack ending
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

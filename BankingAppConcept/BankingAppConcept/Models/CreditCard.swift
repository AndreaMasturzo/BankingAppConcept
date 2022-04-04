//
//  CreditCard.swift
//  Test1.0BankingApp
//
//  Created by Cristian Cimbir on 31/03/22.
//

import SwiftUI

struct CreditCard<Content>: View where Content: View {
    
    var content: () -> Content
    
    var body: some View {
        content()
    }
}


struct CreditCardFront: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack(alignment: .top) {
                Spacer()
                Image(systemName: "arrow.uturn.backward")
                    .foregroundColor(Color.white)
            }
            
            Spacer()
            Spacer()
            
            VStack(alignment: .leading) {
                Image("chip")
                    .resizable()
                    .scaleEffect(0.7)
                    .scaledToFit()
                    .padding(.leading)
                Text("Andrea Masturzo")
                    .font(.system(size: 15))
                    .fontWeight(.regular)
                    .foregroundColor(Color.white)
                
                Text("4000 1234 5678 9010")
                    .font(.system(size: 15, weight: .regular, design: .monospaced))
                    .foregroundColor(Color.white)
                HStack {
                    VStack {
                        Text("GOOD")
                            .font(.system(size: 7))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        Text("THRU")
                            .font(.system(size: 7))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                    }
                    Text("12/23")
                        .font(.system(size: 15, weight: .regular, design: .monospaced))
                        .foregroundColor(Color.white)
                    Spacer()
                    Image("visa")
                        .resizable()
                        .scaleEffect(1)
                        .scaledToFit()
                        .frame(width: 80, height: 30)
                }
                .padding(.top, -10.0)
            }
            
        }.frame(width: 301, height: 179)
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1450980392, green: 0.3254901961, blue: 0.5176470588, alpha: 1)), Color(#colorLiteral(red: 0.2941176471, green: 0.4745098039, blue: 0.6509803922, alpha: 1))]), startPoint: .bottom, endPoint: .top))
            .cornerRadius(20)
    }
}


struct CreditCardBack: View {
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 333.0, height: 35)
                .padding([.top], 20.0)
            Spacer()
        }.frame(width: 301, height: 179)
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1450980392, green: 0.3254901961, blue: 0.5176470588, alpha: 1)), Color(#colorLiteral(red: 0.2941176471, green: 0.4745098039, blue: 0.6509803922, alpha: 1))]), startPoint: .bottom, endPoint: .top))
            .cornerRadius(20)
    }
}


//struct CreditCard_Previews: PreviewProvider {
//    static var previews: some View {
//        CreditCard<CreditCardFront>(content: { CreditCardFront(name: "Andrea Masturzo", expires: "12/23") })
//    }
//}
//
//struct CreditCard_Previews: PreviewProvider {
//    static var previews: some View {
//        CreditCard<CreditCardBack>(content: { CreditCardBack() })
//    }
//}


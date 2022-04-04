//
//  List.swift
//  BankingApp
//
//  Created by Andrea Masturzo on 31/03/22.
//

import SwiftUI

struct ListItem: View, Identifiable {
    
    let id = UUID()
    let image: String
    let title: String
    let subtitle: String
    let price: String
    
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 330, height: 70, alignment: .center)
                .foregroundColor(Color.white)
                .shadow(color: Color.secondary, radius: 2, x: 2, y: 2)
                
            HStack {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .padding()
                    
                VStack(alignment: .leading, spacing: 2) {
                    Text(title)
                        .bold()
                        
                        
                    Text(subtitle)
                        
                        
                
                }
                .font(.system(size: 10))
                
                    Spacer()
                
                Text(price)
                    .font(.system(size: 20))
                    .bold()
                    .padding()
            }
        }
        .frame(width: 310, height: 70, alignment: .center)
        .listRowBackground(Color.clear)
        
    }
}


struct ListView: View {
    
    init() {
    
        UITableView.appearance().separatorColor = UIColor.clear
        UITableViewCell.appearance().backgroundColor = UIColor.clear

    }
    
    var body: some View {
//        GeometryReader { geo in
            List {
                Section(header: Text("Today").bold().font(.system(size: 20))) {
                ListItem(image: "AppleLogo", title: "APPLE.COM", subtitle: "Monthly Subscription", price: "-2,99 $")
                    ListItem(image: "Netflix", title: "NETFLIX.COM", subtitle: "Monthly Subscription", price: "-14,49 $")
                    ListItem(image: "Amazon", title: "AMAZON.COM", subtitle: "Shopping", price: "-218,60 $")
                }
                
                Section(header: Text("Yesterday").bold().font(.system(size: 20))) {
                    ListItem(image: "Spotify", title: "SPOTIFY.COM", subtitle: "Monthly Subscription", price: "-6,49 $")
                    ListItem(image: "Shopping", title: "SHOPPING", subtitle: "Grocery Store", price: "-24,40 $")
                    ListItem(image: "Shopping", title: "SHOPPING", subtitle: "Clothes Store", price: "-28,30 $")
                }
            }
//            .frame(width: geo.size.width/1.005, height: geo.size.height)
//        }
        
        .background(Color(red: 235, green: 235, blue: 235))
        
    }
}

struct List_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

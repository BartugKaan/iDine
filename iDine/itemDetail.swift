//
//  itemDetail.swift
//  iDine
//
//  Created by Bartuğ Kaan Çelebi on 3.07.2023.
//

import SwiftUI

struct itemDetail: View {
    
    let item: MenuItem
    @EnvironmentObject var order: Order
    
    var body: some View {
        VStack{
            Text(item.name)
                .font(.largeTitle)
            ZStack(alignment: .bottomTrailing){
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                    .padding(5)
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(Color.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -5,y: -5)
            }
            Text(item.description)
                .padding()
            
            Button("Order This"){
                order.add(item: item)
            }
            .buttonStyle(.borderedProminent)
            
            Spacer()
        }
    }
}

struct itemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            itemDetail(item: MenuItem.example).environmentObject(Order())
        }
    }
}

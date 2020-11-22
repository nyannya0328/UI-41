//
//  CardView.swift
//  UI-41
//
//  Created by にゃんにゃん丸 on 2020/11/22.
//

import SwiftUI

struct CardView: View {
    
    var item : Item
    var animation : Namespace.ID
    var body: some View {
        
        
        VStack{
            
            HStack{
                
                Spacer(minLength: 0)
                
                Text(item.price)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .padding(.vertical,10)
                    .padding(.horizontal,10)
                    .background(Color.white.opacity(0.05))
                    .cornerRadius(15)
                
                
                
            }
            
            Image(item.image)
                .resizable()
                .frame(width: 100, height: 100)
                .matchedGeometryEffect(id: "image\(item.id)", in: animation)
                
                .padding(.top,5)
                .padding(.bottom,5)
                .padding(.horizontal)
            
            Text(item.title)
                .fontWeight(.bold)
                .foregroundColor(.black)
            
            Text(item.subtitle)
                .font(.caption)
                .foregroundColor(.gray)
            
            HStack{
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                    
                    
                    Image(systemName: "suit.heart.fill")
                        .font(.title)
                        .foregroundColor(.red)
                        .matchedGeometryEffect(id: "heart\(item.id)", in: animation)
                    
                }
                
                Spacer(minLength: 0)
                
                Text(item.rating)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .matchedGeometryEffect(id: "rating\(item.id)", in: animation)
                
                
            }
            .padding()
        
            
            
            
            
        }
        .padding(.bottom,10)
        .background(Color(item.image))
        .cornerRadius(15)
    }
}



//
//  TabButton.swift
//  UI-41
//
//  Created by にゃんにゃん丸 on 2020/11/22.
//

import SwiftUI

struct TabButton: View {
    
    var title : String
    @Binding var selected : String
    var animation : Namespace.ID
    
    
    var body: some View {
        
        Button(action: {
            
            withAnimation(.spring()){selected = title}
            
        }){
            
            
        Text(title)
            .foregroundColor(selected == title ? .white : .black)
            .padding(.vertical,20)
            .padding(.horizontal,selected == title ? 20 : 0)
            .background(
                ZStack{
                    
                    if selected == title{
                        
                        Color.black
                            .clipShape(Circle())
                            .matchedGeometryEffect(id: "Tab", in: animation)
                        
                    }
                    
                    
                }
            
            
            )
            
        }
    }
}


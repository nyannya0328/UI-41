//
//  detail.swift
//  UI-41
//
//  Created by にゃんにゃん丸 on 2020/11/22.
//

import SwiftUI

struct detail: View {
    @Binding var selectitem : Item
    @Binding var show : Bool
    
    var animation : Namespace.ID
    
    @State var loadcontent = false
    
    @State var selectedcolor : Color = Color("p1")
    
    
    var body: some View {
        ScrollView(UIScreen.main.bounds.height < 750 ? .vertical: .init(),content: {
            VStack{
                
                
                HStack(spacing:15){
                    
                    Button(action: {
                        
                        withAnimation(.spring()){show.toggle()}
                        
                    }){
                        
                        
                        
                        Image(systemName: "chevron.left")
                            .font(.title)
                            .foregroundColor(.black)
                        
                        
                        
                    }
                    Spacer(minLength: 0)
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                        
                        
                        Image(systemName: "magnifyingglass")
                            .font(.title)
                            .foregroundColor(.black)
                        
                    }
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                        
                        Image(systemName: "bag")
                            .font(.title)
                            .foregroundColor(.gray)
                        
                    }
                    
                }
                
                .padding()
              
                
                VStack{
                    Image(selectitem.image)
                        .resizable()
                        .frame(width: 150, height: 150)
                        .matchedGeometryEffect(id: "image\(selectitem.id)", in: animation)
                    
                    
                    Text(selectitem.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                    
                    Text(selectitem.subtitle)
                        .font(.caption)
                        .bold()
                        .foregroundColor(.gray)
                        .padding(.top,6)
                    
                    HStack{
                        
                        Text(selectitem.rating)
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                            .matchedGeometryEffect(id: "rating\(selectitem.id)", in: animation)
                        
                        Spacer(minLength: 0)
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                            Image(systemName: "suit.heart.fill")
                                .font(.title)
                                .foregroundColor(.white)
                               
                            
                            
                        }
                        .matchedGeometryEffect(id: "heart\(selectitem.id)", in: animation)
                        
                        
                        
                    }
                    .padding()
                    
                    
                   
                   
                    
                }
                
                .padding(.top)
                .background(Color(selectitem.image)
                                .matchedGeometryEffect(id: "color\(selectitem.image)", in: animation)
                                .clipShape(CustomShape())
                            
                
                            
                )
                .cornerRadius(15)
                .padding()
                
                
                VStack{
                    
                    
                    VStack(alignment:.leading,spacing:25){
                        
                        
                        
                        
                        Text("Offer")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        
                        Text("Good")
                            .foregroundColor(.gray)
                    }
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 30, alignment: .trailing)
                    .background(Color("p1"))
                    .cornerRadius(15)
                
                
                VStack(alignment:.leading,spacing: 15){
                    Text("color")
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                    
                    HStack{
                        
                        ForEach(1...4,id:\.self){i in
                            ZStack{
                                
                                Color("p\(i)")
                                    .clipShape(Circle())
                                    .frame(width: 45, height: 45)
                                    
                                    .onTapGesture {
                                        withAnimation{
                                            
                                            selectedcolor = Color("p\(i)")
                                            
                                            
                                        }
                                    }
                                
                                if selectedcolor == Color("p\(i)"){
                                    
                                    Image(systemName: "checkmark")
                                        .foregroundColor(.black)
                                    
                                    
                                }

                                
                                
                                
                            }
                            
                            
                        }
                        Spacer(minLength: 0)
                        
                
                        
                        
                    }
                    
                    
                    
                    
                    
                }
                
                .padding()
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                    
                    
                    Text("Try")
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 100)
                        .background(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.black,lineWidth: 1)
                            .shadow(color: Color.red, radius: 10, x: 10, y: 10)
                        
                        
                        )
                    
                    
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                    
                    
                    Text("Add to")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 100)
                        .background(Color.black)
                       
                    
                    
                }
                .padding(.vertical)
                
                
                
                
                
                
                
                
                
                
                
            }
                .padding([.horizontal,.bottom])
                .frame(height: loadcontent ? nil : 0)
                .opacity(loadcontent ? 1 : 0)
                Spacer()
                
                
            }
            
            
            
        })
        
        
        
        .onAppear{
            
            withAnimation(Animation.spring().delay(0.05)){
                
                loadcontent.toggle()
                
            }
            
            
        }
       
    }
}


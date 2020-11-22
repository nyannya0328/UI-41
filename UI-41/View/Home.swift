//
//  Home.swift
//  UI-41
//
//  Created by にゃんにゃん丸 on 2020/11/22.
//

import SwiftUI

struct Home: View {
    
    @State var selected = tabs[0]
    var columns = Array(repeating :GridItem(.flexible(),spacing : 20),count:2)
    
    @Namespace var animation
    
    @State var show = false
    @State var selecteditem : Item = items[0]
    var body: some View {
       
        
        ZStack{
            VStack{
                
                HStack{
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                        
                        Image(systemName: "line.horizontal.3.decrease")
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(.gray)
                        
                    }
                    Spacer(minLength: 0)
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                        
                        Image("pro")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50)
                            .cornerRadius(15)
                        
                    }
                    
                }
                .padding()
                .padding(.horizontal)
                Spacer(minLength: 0)
                
                
                ScrollView{
                    
                    
                    VStack{
                        
                        HStack{
                            
                            VStack(alignment: .leading, spacing: 20){
                                
                                Text("Lets")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                
                                
                                Text("Get Start")
                                    .font(.largeTitle)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.black)
                                
                                
                                
                            }
                            .padding(.horizontal)
                            Spacer(minLength: 0)
                            
                        }
                            
                            HStack{
                                
                                
                                ForEach(tabs,id:\.self){tab in
                                    
                                    TabButton(title: tab, selected: $selected, animation: animation)
                                    
                                    if tabs.last != tab{Spacer(minLength: 0)}
                                    
                                    
                                }
                            }
                            .padding()
                            .padding(.top,5)
                        
                        LazyVGrid(columns:columns,spacing:20){
                            
                            
                            ForEach(items){item in
                                
                                
                                
                                CardView(item: item, animation: animation)
                                
                                    .onTapGesture {
                                        withAnimation(.spring()){
                                            
                                            selecteditem = item
                                            show.toggle()
                                            
                                            
                                        }
                                    }
                            }
                            
                           
                            
                            
                        }
                        .padding()
                                
                                
                                
                                
                            
                            
                        
                        
                    }
                    
                }
                
                
                
            }
            .opacity(show ? 0 :1)
            
            if show{
                
                detail(selectitem: $selecteditem, show: $show, animation: animation)
                
            }
            
        }
        
        .background(Color.white.ignoresSafeArea())
        
        
        
    }
}
var tabs = ["A","B","C","D"]


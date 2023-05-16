//
//  welcome.swift
//  wwdc
//
//  Created by Gustavo Batista on 12/04/23.
//

import SwiftUI

struct welcome: View {
    let impact = UIImpactFeedbackGenerator(style: UIImpactFeedbackGenerator.FeedbackStyle.medium)
    var body: some View {
        ZStack{
            Color(red: 105/255, green:235/255 , blue: 208/255)
                .edgesIgnoringSafeArea(.all)
//            Image("arvore1")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .padding(100)
//                .padding(.bottom, 100)
//                .padding(.horizontal, 20)
//                .opacity(0.03)
            VStack{
                Text("Folk Lore!")
                    .font(Font.custom("Helvetica Neue", size:98))
                    .bold()
                    .padding(.bottom, 250)
            }
            VStack{
                Text("A history about brazilian folklore culture")
                    .frame(width: 800)
                    .multilineTextAlignment(.center)
                    .font(Font.custom("Helvetica Neue", size:42))
                    .padding(.bottom, 25)
            }
            VStack{
                Image("headSaci")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .padding(.top, 350)
            }
            VStack{
                NavigationLink {
                    brasilView()
                }label: {
                            Text("Start")
                        .foregroundColor(.black)
                        .font(Font.custom("Helvetica Neue", size:55))
                        .padding(.horizontal, 40)
                        .padding(.vertical, 10)
                                .background(Color(red: 244/255, green: 73/255, blue: 17/255))
                                .cornerRadius(55)
                    
                        }
                        .padding(.top, 850)
                
            }
            
        }
        .navigationBarBackButtonHidden(true)
    }
}


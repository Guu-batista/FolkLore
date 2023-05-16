//
//  brasil.swift
//  wwdc
//
//  Created by Gustavo Batista on 12/04/23.
//

import SwiftUI

struct brasilView: View {
    
    var body: some View {
        ZStack{
            Color(red: 105/255, green:235/255 , blue: 208/255)
                .edgesIgnoringSafeArea(.all)
            Image("brasil")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(100)
                .padding(.bottom, 100)
                .padding(.horizontal, 20)
                .opacity(0.05)
            VStack{
                Text("Welcome to Brazil!")
                    .font(Font.custom("Helvetica Neue", size:68))
                    .bold()
                    .padding(.bottom, 950)
            }
            VStack{
                Text("Brazil is unique and beautiful due to its vast territory, diverse cultures, and natural wonders, from the Amazon rainforest to the stunning beaches. Brazilian culture is rich, influenced by Indigenous, African, and European heritages, with folklore holding a special place in the hearts of Brazilians ❤️.")
                    .frame(width: 750)
                    .multilineTextAlignment(.center)
                    .font(Font.custom("Helvetica Neue", size:38))
                    .padding(.bottom, 275)
            }
            VStack{
                GifImage(name: "saci")
                    .frame(width: 300, height: 300)
                    .padding(.top, 600)
                    .padding(.trailing, 530)
            }
            VStack{
                NavigationLink {
                    firstPage()
                }label: {
                            Text("I want to learn more!")
                        
                        .font(Font.custom("Helvetica Neue", size:33))
                        .foregroundColor(Color.black)
                        .padding(.horizontal, 40)
                        .padding(.vertical, 10)
                                .background(Color(red: 244/255, green: 73/255, blue: 17/255))
                                .cornerRadius(55)
                        }
                        .padding(.top, 875)
            }
            
        }
        .navigationBarBackButtonHidden(false)
    }
}


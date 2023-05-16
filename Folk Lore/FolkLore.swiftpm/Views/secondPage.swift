//
//  Pagina2View.swift
//  wwdc
//
//  Created by Gustavo Batista on 06/04/23.
//

import SwiftUI

struct secondPage: View {
    
    init() {
        print("Second Page!")
    }
    
    var body: some View {
        ZStack{
            Color(red: 105/255, green:235/255 , blue: 208/255)
                .edgesIgnoringSafeArea(.all)
            Image("arte-folclorica")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(100)
                .padding(.bottom, 100)
                .padding(.horizontal, 20)
                .opacity(0.03)
            VStack{
                Text("Let’s learn more about it?")
                    .font(Font.custom("Helvetica Neue", size:60))
                    .bold()
                    .padding(.bottom, 950)
            }
            VStack{
                Text("The Brazilian folklore is filled with iconic and legendary characters that are adored by the Brazilian people, and they are an integral part of Brazilian popular culture, celebrated in stories, songs, and artistic representations.")
                    .frame(width: 700)
                    .multilineTextAlignment(.center)
                    .font(Font.custom("Helvetica Neue", size:45))
                    .padding(.bottom, 275)
            }
            VStack{
                GifImage(name: "boto")
                    .frame(width: 300, height: 300)
                    .padding(.top, 600)
                    .padding(.trailing, 490)
            }
            VStack{
                NavigationLink {
                    thirdPage()
                }label: {
                            Text("Next")
                                .foregroundColor(.black)
                                .font(Font.custom("Helvetica Neue", size:33))
                                .padding(.horizontal, 40)
                                .padding(.vertical, 10)
                                .background(Color(red: 244/255, green: 73/255, blue: 17/255))
                                .cornerRadius(55)
                        }
                        .padding(.top, 850)
            }
            
        }
        .navigationBarBackButtonHidden(false)
    }
}



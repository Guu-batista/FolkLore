//
//  thirdPage.swift
//  wwdc
//
//  Created by Gustavo Batista on 06/04/23.
//

import SwiftUI

struct thirdPage: View {
    var body: some View {
        ZStack{
            Color(red: 105/255, green:235/255 , blue: 208/255)
                .edgesIgnoringSafeArea(.all)
            Image("sea-waves")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(100)
                .padding(.bottom, 100)
                .padding(.horizontal, 20)
                .opacity(0.03)
            VStack{
                Text("Do you know which are the main creatures of Brazilian folklore?")
                    .font(Font.custom("Helvetica Neue", size:44))
                    .bold()
                    .frame(width: 700)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 950)
            }
            VStack{
                Text("FolkLore will help you to find some information about the main mystical creatures that are part of Brazilian folklore.")
                    .frame(width: 700)
                    .multilineTextAlignment(.center)
                    .font(Font.custom("Helvetica Neue", size:45))
                    .padding(.bottom, 275)
            }
            VStack{
                GifImage(name: "curupira")
                    .frame(width: 300, height: 300)
                    .padding(.top, 600)
                    .padding(.leading, 490)
            }
            VStack{
                NavigationLink {
                    creatures()
                }label: {
                            Text("Start!")
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


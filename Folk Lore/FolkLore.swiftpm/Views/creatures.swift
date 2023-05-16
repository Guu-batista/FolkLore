//
//  creatures.swift
//  wwdc
//
//  Created by Gustavo Batista on 06/04/23.
//

import SwiftUI

struct creatures: View {
    @State private var showModalCUCA = false
    @State private var showModalBOTO = false
    @State private var showModalSACI = false
    @State private var showModalCURU = false
    
    var body: some View {
        ZStack {
            Color(red: 105/255, green: 235/255 , blue: 208/255)
                .edgesIgnoringSafeArea(.all)
            
            Image("tree")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(100)
                .padding(.bottom, 100)
                .padding(.horizontal, 20)
                .opacity(0.03)
            
            VStack {
                Text("Select mystical creature to learn more about it: ")
                    .font(Font.custom("Helvetica Neue", size:48))
                    .bold()
                    .frame(height: 200)
                    .multilineTextAlignment(.center)
                    //.padding(.top, 5)
                    .padding(.horizontal, 55)
                    .blur(radius: showModalCURU || showModalSACI || showModalBOTO || showModalCUCA ? 10 : 0)
                
                
                Spacer()
                
                HStack {
                    Button(action: {
                        showModalCURU = true
                    }, label: {
                        GifImage(name: "curupira")
                            .frame(width: 300, height: 300)
                    })
                    
                    Button(action: {
                        showModalSACI = true
                    }, label: {
                        GifImage(name: "saci")
                            .frame(width: 300, height: 300)
                            .padding(.leading, 8)
                    })
                }
                .padding(.bottom, 100)
                .padding(.horizontal, 20)
                .blur(radius: showModalCURU || showModalSACI || showModalBOTO || showModalCUCA ? 10 : 0)
                .sheet(isPresented: $showModalCURU) {
                    ModalViewCURU(efeito: Music())
                }
                .sheet(isPresented: $showModalSACI) {
                    ModalViewSACI(efeito: Music())
                }
                
                HStack {
                    Button(action: {
                        showModalCUCA = true
                    }, label: {
                        GifImage(name: "cucaDireita")
                            .frame(width: 300, height: 300)
                            .padding(.leading, 8)
                    })
                    
                    Button(action: {
                        showModalBOTO = true
                    }, label: {
                        GifImage(name: "boto")
                            .frame(width: 300, height: 300)
                            .padding(.leading, 7)
                    })
                }
                .padding(.bottom, 90)
                .padding(.horizontal, 20)
                .blur(radius: showModalCURU || showModalSACI || showModalBOTO || showModalCUCA ? 10 : 0)
                .sheet(isPresented: $showModalCUCA) {
                    ModalViewCUCA(efeito: Music())
                }
                .sheet(isPresented: $showModalBOTO) {
                    ModalViewBOTO(efeito: Music())
                }
            }
            .navigationBarBackButtonHidden(false)
        }
    }
}


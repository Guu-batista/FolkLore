//
//  modal.swift
//  wwdc
//
//  Created by Gustavo Batista on 10/04/23.
//

import SwiftUI
import WebKit

struct ModalViewCUCA: View{
    var music = Music()
    @Environment(\.presentationMode) var presentation
    @ObservedObject var efeito: Music
    var body: some View{
        ZStack{
            Color(red: 25/255, green:111/255 , blue: 94/255)
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                presentation.wrappedValue.dismiss()
            },label: {
                Image(systemName: "xmark.circle")
                    .resizable()
                    
                    .foregroundColor(.black)
                
            })
            .frame(width: 30, height: 30)
            .padding(.leading, 585)
            .padding(.bottom, 870)
            Button(action: {
                music.efeito("Cuca.m4a")
            },label:{
                Image("sound")
                    .resizable()
                    
                
            })
            .frame(width: 25, height: 25)
            .padding(.bottom, 695)
            .padding(.leading, 105)
            Text("Cuca")
                .bold()
                .padding(.bottom, 800)
                .padding(.horizontal)
                .font(Font.custom("Helvetica Neue", size:48))
            Text("(kˈu.kə)")
                .bold()
                .padding(.bottom, 700)
                .padding(.trailing, 25)
                .font(Font.custom("Helvetica Neue", size:25))
            Text("A humanoid alligator 🐊 with sharp teeth and red eyes. She is known for being clever and manipulative, and enjoys tricking and scaring children who misbehave or disobey their parents. It is said to have a weakness for those who show kindness and respect to her.")
                .frame(width: 650, height: 450)
                .multilineTextAlignment(.center)
                .font(Font.custom("Helvetica Neue", size: 36))
                .padding(.bottom, 250)
            GifImage(name: "cuca")
                .frame(width: 300, height: 300)
                .padding(.top, 600)
        }
    }
}

struct ModalViewBOTO: View{
    var music = Music()
    @Environment(\.presentationMode) var presentation
    @ObservedObject var efeito: Music
    var body: some View{
        ZStack{
            Color(red: 25/255, green:111/255 , blue: 94/255)
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                presentation.wrappedValue.dismiss()
            },label: {
                Image(systemName: "xmark.circle")
                    .resizable()
                    .foregroundColor(.black)
                
            })
            .frame(width: 30, height: 30)
            .padding(.leading, 585)
            .padding(.bottom, 870)
            
            Button(action: {
                music.efeito("Boto.m4a")
            },label:{
                Image("sound")
                    .resizable()
            })
            .frame(width: 25, height: 25)
            .padding(.bottom, 695)
            .padding(.leading, 250)
            
            Text("Boto Cor-de-Rosa")
                .bold()
                .padding(.bottom, 800)
                .padding(.horizontal)
                .font(Font.custom("Helvetica Neue", size:48))
            Text("(ˈbotu kɔɾ dʒi ˈʁoza)")
                .bold()
                .padding(.bottom, 700)
                .padding(.trailing, 35)
                .font(Font.custom("Helvetica Neue", size:25))
            Text("A shape-shifter 🐬 that seduces women at night in human form and returns to the river as a dolphin in the morning. Considered a symbol of the enchanting nature of the Amazon River, the Pink Dolphin is now protected from human activities that threaten its habitat.")
                .frame(width: 650, height: 450)
                .multilineTextAlignment(.center)
                .font(Font.custom("Helvetica Neue", size: 36))
                .padding(.bottom, 250)
            GifImage(name: "boto")
                .frame(width: 300, height: 300)
                .padding(.top, 500)
        }
    }
}

struct ModalViewCURU: View{
    
    var music = Music()
    @Environment(\.presentationMode) var presentation
    @ObservedObject var efeito: Music
    var body: some View{
        ZStack{
            Color(red: 25/255, green:111/255 , blue: 94/255)
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                presentation.wrappedValue.dismiss()
            },label: {
                Image(systemName: "xmark.circle")
                    .resizable()
                    .foregroundColor(.black)
                
            })
            .frame(width: 30, height: 30)
            .padding(.leading, 585)
            .padding(.bottom, 870)
            Button(action: {
                //let music = Music()
                music.efeito("Curupira.m4a")

            },label:{
                Image("sound")
                    .resizable()
            })
            .frame(width: 25, height: 25)
            .padding(.bottom, 695)
            .padding(.leading, 145)
            Text("Curupira")
                .bold()
                .padding(.bottom, 800)
                .padding(.horizontal)
                .font(Font.custom("Helvetica Neue", size:48))
            Text("(ku.ruˈpi.ra)")
                .bold()
                .padding(.bottom, 700)
                .padding(.trailing, 40)
                .font(Font.custom("Helvetica Neue", size:25))
            Text("Curupira 🍃 is a small, hairy man with bright red hair and backward-facing feet. It is the protector of the forest, a trickster with magical powers, has a deep respect for nature and the animals that live in it expelling hunters from the forest.")
                .frame(width: 650, height: 450)
                .multilineTextAlignment(.center)
                .font(Font.custom("Helvetica Neue", size: 36))
                .padding(.bottom, 250)
            GifImage(name: "curupira")
                .frame(width: 300, height: 300)
                .padding(.top, 600)
        }
        
    }
}

struct ModalViewSACI: View{
    var music = Music()
    @ObservedObject var efeito: Music
    @Environment(\.presentationMode) var presentation
    var body: some View{
        ZStack{
            Color(red: 25/255, green:111/255 , blue: 94/255)
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                presentation.wrappedValue.dismiss()
            },label: {
                Image(systemName: "xmark.circle")
                    .resizable()
                    
                    .foregroundColor(.black)

            })
            .frame(width: 30, height: 30)
            .padding(.leading, 585)
            .padding(.bottom, 870)
            Button(action: {
                music.efeito("Saci.m4a")
            },label:{
                Image("sound")
                    .resizable()
                    
                
            })
            .frame(width: 25, height: 25)
            .padding(.bottom, 695)
            .padding(.leading, 90)
            //TITLE
            Text("Saci")
                .bold()
                .padding(.bottom, 800)
                .padding(.horizontal)
                .font(Font.custom("Helvetica Neue", size:48))
            //FONEMA
            Text("(sa.sˈi)")
                .bold()
                .padding(.bottom, 700)
                .padding(.trailing, 35)
                .font(Font.custom("Helvetica Neue", size:25))
            
            //ABOUT
            Text("A playful one-legged creature 🌪️, often depicted smoking a pipe and wearing a red cap. He enjoys playing pranks on people, but can also be helpful and grant wishes to those who treat him with respect. ")
                .frame(width: 550, height: 450)
                .multilineTextAlignment(.center)
                .font(Font.custom("Helvetica Neue", size: 36))
                .padding(.bottom, 250)
            GifImage(name: "saci")
                .frame(width: 300, height: 300)
                .padding(.top, 600)
        }
    }
}

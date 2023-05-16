import SwiftUI

struct firstPage: View {
    
    var body: some View {
        ZStack{
            Color(red: 105/255, green:235/255 , blue: 208/255)
                .edgesIgnoringSafeArea(.all)
            Image("arvore1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(100)
                .padding(.bottom, 100)
                .padding(.horizontal, 20)
                .opacity(0.03)
            VStack{
                Text("What is brazilian folklore?")
                    .font(Font.custom("Helvetica Neue", size:60))
                    .bold()
                    .padding(.bottom, 950)
            }
            VStack{
                Text("A diverse cultural tradition celebrated on August 22nd 🇧🇷, featuring legends, myths, traditions, festivals, crafts, and more. It reflects the rich and varied popular culture of Brazil, deeply rooted in different regions of the country.")
                    .frame(width: 700)
                    .multilineTextAlignment(.center)
                    .font(Font.custom("Helvetica Neue", size:40))
                    .padding(.bottom, 275)
            }
            VStack{
                GifImage(name: "cuca")
                    .frame(width: 300, height: 300)
                    .padding(.top, 600)
                    .padding(.leading, 490)
            }
            VStack{
                NavigationLink {
                    secondPage()
                }label: {
                            Text("Let's GO!")
                        
                        .font(Font.custom("Helvetica Neue", size:33))
                        .foregroundColor(Color.black)
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

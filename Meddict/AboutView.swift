//
//  LaunchView.swift
//  Medict
//
//  Created by Jahnavi Kari on 10/30/23.
//

import SwiftUI

struct AboutView: View {
    // variables
    @State var text = "Medical terminology is confusing for all. It's important for patients, medical students, and medical professionals, and the general public, to understand medical terminology to ensure that everyone understands modern-day medicine. That's why we created this app as we found ourselves struggling to understand the terms that we saw in our everyday lives with defintions often even more confusing than the terms themselves."
    @State var name = "More"
    var body: some View {
        
            NavigationStack {
                ZStack {
                    Color("BgColour")
                        .ignoresSafeArea()
                VStack {
                /*    Image("period1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)*/
                    Text(text)
                        .font(.callout)
                        .foregroundColor(Color.black)
                        .padding([.leading, .bottom])
                        .fontDesign(.monospaced)
                        .padding()
                    
                    Button(name) {
                        text = "-"
                        name = "Click 'About' to return to previous screen."
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color("Acc3"))
                    .foregroundColor(Color.white)
                }
                .padding()
                
                .toolbar { ToolbarItemGroup(placement: .status) {
                    
                    NavigationLink(destination: ContentView()) {
                        Text("Home")
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
                    }
                    
                    NavigationLink(destination: TermListView()) {
                        Text("Terms")
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
                    }
                    
                    NavigationLink(destination: AboutView()) {
                        Text("About")
                            .fontWeight(.bold)
                            .foregroundColor(Color("Acc1"))
                        
                    }
                    NavigationLink(destination: CreditView()) {
                        Text("Credits")
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
                    }
                }
                }
                .navigationTitle("About")
                .navigationBarTitleDisplayMode(.inline)
                
            }
            }
            .ignoresSafeArea()
        }
    }
    


struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}

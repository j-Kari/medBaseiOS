//
//  LaunchView.swift
//  Medict
//
//  Created by Jahnavi Kari on 10/30/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
            NavigationStack {
              
                ZStack {
                    Color("BgColour")
                        .ignoresSafeArea()
                VStack {
                /*    Image("period1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)*/
                    Text ("Welcome to Medbase!")
                        .font(.callout)
                        .foregroundColor(Color("Acc1"))
                        .padding([.leading, .bottom])
                        .fontDesign(.monospaced)
                        .fontWeight(.bold)
                    Text ("Terms & their defintions can be found by clicking on the 'Terms' tab.")
                        .font(.callout)
                        .foregroundColor(Color.black)
                        .padding(.bottom)
                        .fontDesign(.serif)
                        .multilineTextAlignment(.center)
                    Text ("Learn more about the app, future expansions, & the creators by clicking on the 'About' tab.")
                        .font(.callout)
                        .foregroundColor(Color.black)
                        .padding(.bottom)
                        .fontDesign(.serif)
                        .multilineTextAlignment(.center)
                    
                }
                .padding()
                
                .toolbar { ToolbarItemGroup(placement: .status) {
                    
                    NavigationLink(destination: ContentView()) {
                        Text("Home")
                            .fontWeight(.bold)
                            .foregroundColor(Color("Acc1"))
                    }
                    
                    NavigationLink(destination: TermListView()) {
                        Text("Terms")
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
                    }
                    
                    NavigationLink(destination: AboutView()) {
                        Text("About")
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
                        
                    }
                    
                    NavigationLink(destination: CreditView()) {
                        Text("Credits")
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
                    }
                }
                }
                .navigationTitle("Home")
                .navigationBarTitleDisplayMode(.inline)
                
            }
            }
            .foregroundColor(Color(UIColor.systemPink))
            .ignoresSafeArea()
        }
    }
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

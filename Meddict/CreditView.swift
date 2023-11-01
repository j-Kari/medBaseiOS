//
//  LaunchView.swift
//  Medict
//
//  Created by Jahnavi Kari on 10/30/23.
//

import SwiftUI

struct CreditView: View {
    var body: some View {
        
            NavigationStack {
                ZStack {
                    Color("BgColour")
                        .ignoresSafeArea()
                VStack {
                    Text ("Images: Jahnavi Kari")
                        .font(.callout)
                        .foregroundColor(Color.black)
                        .padding(.bottom)
                        .fontDesign(.serif)
                        .multilineTextAlignment(.center)
                    
                    Text ("Definitions: Jahnavi Kari & Sanat Rao")
                        .font(.callout)
                        .foregroundColor(Color.black)
                        .padding(.bottom)
                        .fontDesign(.serif)
                        .multilineTextAlignment(.center)
                    
                    Text ("App Code: Jahnavi Kari & Sanat Rao")
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
                            .foregroundColor(Color.gray)
                        
                    }
                    NavigationLink(destination: CreditView()) {
                        Text("Credits")
                            .fontWeight(.bold)
                            .foregroundColor(Color("Acc1"))
                    }
                }
                }
                .navigationTitle("Credits")
                .navigationBarTitleDisplayMode(.inline)
                
            }
            }
            .ignoresSafeArea()
        }
    }
    


struct CreditView_Previews: PreviewProvider {
    static var previews: some View {
        CreditView()
    }
}

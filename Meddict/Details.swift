//
//  Details.swift
//  SimplyOrganizations
//
//  Created by Jahnavi Kari on 6/28/23.
//

import SwiftUI

struct Details: View {
    
    /*public struct n: Hashable, Identifiable {
        let name: String
        let desc: String
        let id = UUID()
    }*/
    
    var body: some View {
      VStack(alignment: .leading) {
        HStack {
          
            Text("Siyasizana Foundation")
            .font(.largeTitle)
            .bold()
          
          Spacer()
        }
        
          Text(":)")
          .padding(.top)
        
        Spacer()
      }
      .padding()
      .navigationBarTitle(Text("Siyasizana Foundation"), displayMode: .inline)
    }
}

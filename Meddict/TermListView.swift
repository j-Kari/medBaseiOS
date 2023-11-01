//
//  TermListView.swift
//  Medict
//
//  Created by Jahnavi Kari on 10/19/23.
//

import SwiftUI

struct TermListView: View {
    // variables
    
    var body: some View {
        NavigationView {
           List(Words, id: \.id) { term in
                NavigationLink(destination:
                    TermDetail(term: term)) {
                    RowView(term: term)
                }
                    .fontWeight(.bold)
                    .foregroundColor(Color("Acc2"))
                    .fontDesign(.serif)
            }
            .navigationTitle("Terms")
            
        }
    }
}

struct TermListView_Previews: PreviewProvider {
    static var previews: some View {
        TermListView()
    }
}

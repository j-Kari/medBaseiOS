//
//  TermListView.swift
//  Medict
//
//  Created by Kiran Kari on 10/19/23.
//

import SwiftUI

struct TermListView: View {
    // variables
    var body: some View {
        List(Words,id: \.id) { term in
            RowView(term: term)
        }
        NavigationView {
            List(Words, id: \.id) { term in
                NavigationLink(destination:
                    TermDetail(term: term)) {
                    RowView(term: term)
                }
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

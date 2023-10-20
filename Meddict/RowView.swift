//
//  RowView.swift
//  Medict
//
//  Created by Kiran Kari on 10/19/23.
//

import SwiftUI
import SDWebImageSwiftUI //address

struct RowView: View {
    // variables
    var term: Words
    
    var body: some View {
        
        HStack {
            WebImage(url: URL(string: term.image))
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 20.0), style: FillStyle())
            
            VStack(alignment: .leading) {
                Text(term.name)
                    .font(.title3)
                Text(term.def) //change cuz def makes no sense
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
        .padding()
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(term: Words[0])
    }
}

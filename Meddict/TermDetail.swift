//
//  TermDetail.swift
//  Medict
//
//  Created by Kiran Kari on 10/19/23.
//
// REFERENCE: https://blog.learncodeonline.in/navigation-list-view-with-local-json-swiftui

import SwiftUI

struct TermDetail: View {
    //  variables
    var term: Word
    
    var body: some View {
        List {
            Section(header: Text("Terms"), content: {
                HStack{
                    Spacer()
                    Image(term.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150, alignment: .center)
                        .clipShape(RoundedRectangle(cornerRadius: 52.0), style:FillStyle())
                    Spacer()
                }
            })
            
           Section(header: Text("Information"), content: { //address
               TInfoRow(icon: "hare", title: "Species", value: term.type)
               TInfoRow(icon: "eyes", title: "Gender", value: term.type)
               TInfoRow(icon: "waveform.path.ecg.rectangle", title: "Status", value: term.syn)
               TInfoRow(icon: "map", title: "Location", value: term.location.name)
               TInfoRow(icon: "paperplane", title: "Origin", value: term.origin.name)
            })
            }
            .listStyle(GroupedListStyle())
            .navigationTitle(term.name)
            
    }
}

struct TInfoRow: View {
    // variables
    var icon: String
    var title: String
    var value: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.accentColor)
            Text(title)
                .font(.body)
                .foregroundColor(.accentColor)
            Spacer()
            Text(value)
        }
    }
}



struct TermDetail_Previews: PreviewProvider {
    static var previews: some View {
        TermDetail(term: Words[0])
    }
}

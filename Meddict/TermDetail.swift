//
//  TermDetail.swift
//  Medict
//
//  Created by Jahnavi Kari on 10/19/23.
//

import SwiftUI

struct TermDetail: View {
    //  variables
    var term: Word
    
    var body: some View {
        NavigationStack {
            ZStack {
                List {
                    Section(header: Text("Image"), content: {
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
                        TInfoRow(icon: "folder", title: "Type", value: term.type)
                        TInfoRow(icon: "map", title: "Origin", value: term.origin.name)
                        TInfoRow(icon: "paperplane", title: "Related Terms", value: term.syn)
                        TInfoRow(icon: "doc.plaintext", title: "Definition", value: term.def)
                        TInfoRow(icon: "magnifyingglass", title: "Additional Information", value: term.info)
                    })
                }
                .listStyle(GroupedListStyle())
                .navigationTitle(term.name)
                .foregroundColor(Color.gray)
                .fontDesign(.monospaced)
                
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
                .padding()
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

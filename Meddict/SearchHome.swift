//
//  SearchHome.swift
//  Medict
//
// Created by Jahnavi Kari on 9/21/23.
// resources:
// https://www.appcoda.com/swiftui-search-bar/
// https://www.appcoda.com/custom-search-bar-tutorial/
// -> need to change data storage to seperate page


import SwiftUI

struct SearchHome: View {
    // variables
    @Binding var text: String
    @State private var isEditing = false
  
    // view
    var body: some View {
        HStack {
            TextField("Search...", text: $text)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
             
                        if isEditing {
                            Button(action: {
                                self.text = ""
                            }) {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 8)
                            }
                        }
                    }
                )
                .padding(.horizontal, 10)
                .onTapGesture {
                    self.isEditing = true
                }
 
           /* if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.text = ""
 
                }) {
                    Text("Cancel")
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
                .animation(.default)
            } */
        }
        .padding(30)
    }
}


struct SearchHome_Previews: PreviewProvider {
    static var previews: some View {
        SearchHome(text: .constant(""))
    }
}

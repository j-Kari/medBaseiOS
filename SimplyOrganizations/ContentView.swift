//
//  ContentView.swift
//  SimplyOrganizations
//
//  Created by Kiran Kari on 6/27/23.
//

import Foundation
import SwiftUI

struct ContentView: View {
    
    public struct NGO: Hashable, Identifiable {
        let name: String
        let desc: String
        let id = UUID()
    }
    
    
    public struct Areas: Identifiable {
        let name: String
        let NGOs: [NGO]
        let id = UUID()
    }
    
    public let Regions: [Areas] = [
        Areas(name: "Asia",
              NGOs: [NGO(name: "SUGGEST", desc: ":)"),]),
        Areas(name: "India",
                    NGOs: [NGO(name: "Project Stree", desc: ":)"),
                           NGO(name: "The Myna Mahila Foundation", desc: ":)"),
                           NGO(name: "the Cycle (Sanitation First)", desc: ":)"),
                           NGO(name: "Binti (India)", desc: ":)"),
                           NGO(name: "The Desai Foundation (India)", desc: ":)"),]),
        Areas(name: "Africa",
                    NGOs: [NGO(name: "The Siyasizana Foundation", desc: ":)"),
                           NGO(name: "Project Dignity", desc: ":)"),
                           NGO(name: "Qrate ZA", desc: ":)"),
                           NGO(name: "The Cora Project", desc: ":)"),
                           NGO(name: "Dignity Period", desc: ":)"),
                           NGO(name: "Binti (Africa)", desc: ":)"),
                           NGO(name: "Sustainable Health Enterprises (SHE)", desc: ":)"),
                           NGO(name: "Days For Girls", desc: ":)"),]),
        Areas(name: "North America",
                    NGOs: [NGO(name: "The Pad Project (International)", desc: ":)"),
                           NGO(name: "The National Organization for Women (NOW) Foundation", desc: ":)"),
                           NGO(name: "Alliance for Period Supplies", desc: ":)"),
                           NGO(name: "Unite for Reproductive & Gender Equity (URGE)", desc: ":)"),
                           NGO(name: "PERIOD, Inc", desc: ":)"),
                           NGO(name: "In Our Own Voice: National Black Women's Reproductive Justice Agenda", desc: ":)"),
                           NGO(name: "The Alliance for Period Supplies", desc: ":)"),
                           NGO(name: "PERIOD.", desc: ":)"),
                           NGO(name: "Binti (USA)", desc: ":)"),
                           NGO(name: "The Desai Foundation (USA)", desc: ":)"),
                           NGO(name: "601 for Period Equity", desc: ":)"),]),
        Areas(name: "South America",
                    NGOs: [NGO(name: "Pink Box Purpose", desc: ":)")]),
        Areas(name: "Europe",
                    NGOs: [NGO(name: "Binti (UK)", desc: ":)"),
                           NGO(name: "Freedom4Girls", desc: ":)"),
                           NGO(name: "Bloody Good Project (BGP)", desc: ":)"),]),
        Areas(name: "Australia",
                    NGOs: [NGO(name: "The Period Project", desc: ":)"),
                           NGO(name: "Hey Girls Australia", desc: ":)"),
                           NGO(name: "Share the Dignity", desc: ":)"),]),
    ]
    
    @State private var singleSelection: UUID?
    
    
    var body: some View {
        NavigationView {
            List(selection: $singleSelection) {
                ForEach(Regions) { region in
                    Section(header: Text("Major Organizations In \(region.name)")) {
                            ForEach(region.NGOs) { organization in
                                NavigationLink(destination: Details()) {
                                    Text(organization.name)
                                }
                            } 
                    }
                }
            }
            .listStyle(.sidebar)
            .navigationTitle("Organizations")

        }
    }
}

struct Details_Previews: PreviewProvider {
    static var previews: some View {
        Details()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

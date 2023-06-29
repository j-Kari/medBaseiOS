//
//  ContentView.swift
//  SimplyOrganizations
//
//  Created by Kiran Kari on 6/27/23.
//

import SwiftUI

struct ContentView: View {
    struct NGO: Hashable, Identifiable {
        let name: String
        let id = UUID()
    }
    
    
    struct Areas: Identifiable {
        let name: String
        let NGOs: [NGO]
        let id = UUID()
    }
    
    
    private let Regions: [Areas] = [
        Areas(name: "Asia",
                    NGOs: [NGO(name: "SUGGEST"),]),
        Areas(name: "India",
                    NGOs: [NGO(name: "Project Stree"),
                           NGO(name: "The Myna Mahila Foundation"),
                           NGO(name: "the Cycle (Sanitation First)"),
                           NGO(name: "Binti (India)"),
                           NGO(name: "The Desai Foundation (India)"),]),
        Areas(name: "Africa",
                    NGOs: [NGO(name: "The Siyasizana Foundation"),
                           NGO(name: "Project Dignity"),
                           NGO(name: "Qrate ZA"),
                           NGO(name: "The Cora Project"),
                           NGO(name: "Dignity Period"),
                           NGO(name: "Binti (Africa)"),
                           NGO(name: "Sustainable Health Enterprises (SHE)"),
                           NGO(name: "Days For Girls"),]),
        Areas(name: "North America",
                    NGOs: [NGO(name: "The Pad Project (International)"),
                           NGO(name: "The National Organization for Women (NOW) Foundation"),
                           NGO(name: "Alliance for Period Supplies"),
                           NGO(name: "Unite for Reproductive & Gender Equity (URGE)"),
                           NGO(name: "PERIOD, Inc"),
                           NGO(name: "In Our Own Voice: National Black Women's Reproductive Justice Agenda"),
                           NGO(name: "The Alliance for Period Supplies"),
                           NGO(name: "PERIOD."),
                           NGO(name: "Binti (USA)"),
                           NGO(name: "The Desai Foundation (USA)"),
                           NGO(name: "601 for Period Equity"),]),
        Areas(name: "South America",
                    NGOs: [NGO(name: "Pink Box Purpose")]),
        Areas(name: "Europe",
                    NGOs: [NGO(name: "Binti (UK)"),
                           NGO(name: "Freedom4Girls"),
                           NGO(name: "Bloody Good Project (BGP)"),]),
        Areas(name: "Australia",
                    NGOs: [NGO(name: "The Period Project"),
                           NGO(name: "Hey Girls Australia"),
                           NGO(name: "Share the Dignity"),]),
    ]
    
    @State private var singleSelection: UUID?
    
    
    var body: some View {
        NavigationView {
            List(selection: $singleSelection) {
                ForEach(Regions) { region in
                    Section(header: Text("Major Organizations In \(region.name)")) {
                        ForEach(region.NGOs) { organization in
                            Text(organization.name)
                        }
                    }
                }
            }
            .listStyle(.sidebar)
            
            .navigationTitle("Organizations")

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

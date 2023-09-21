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
        Areas(name: "COMMONLY MISUNDERSTOOD",
              NGOs: [NGO(name: "Acute", desc: ":)"),
                     NGO(name: "Benign", desc: ":)"),
                     NGO(name: "Malignant", desc: ":)"),
                     NGO(name: "Blood Swab", desc: ":)"),
                     NGO(name: "Dialysis", desc: ":)"),
                     NGO(name: "Remission", desc: ":)"),
                    ]),
        Areas(name: "GENERALLY UNKNOWN",
                    NGOs: [NGO(name: "Angina", desc: ":)"),
                           NGO(name: "Biopsy", desc: ":)"),
                           NGO(name: "Blood Culture", desc: ":)"),
                           NGO(name: "Coronary Bypass", desc: ":)"),
                           NGO(name: "Edema", desc: ":)"),
                           NGO(name: "Embolism", desc: ":)"),
                           NGO(name: "Coronary Bypass", desc: ":)"),
                           NGO(name: "Occult Blood Screen", desc: ":)"),
                           NGO(name: "Spinal Tap", desc: ":)"),
                           ]),
        Areas(name: "MISC.",
                    NGOs: [NGO(name: "Appendectomy", desc: ":)"),
                           NGO(name: "Fusion", desc: ":)"),
                           NGO(name: "Chronic", desc: ":)"),
                           NGO(name: "Hysterectomy", desc: ":)"),
                           NGO(name: "Hypertension", desc: ":)"),
                           NGO(name: "Hypotension", desc: ":)"),
                           NGO(name: "Intravaneous", desc: ":)"),
                           NGO(name: "Intubation", desc: ":)"),
                           NGO(name: "Lesion", desc: ":)"),
                           NGO(name: "Lumbar Puncture", desc: ":)"),
                           NGO(name: "Masectomy", desc: ":)"),
                           NGO(name: "Myocardial Infarction", desc: ":)"),
                           NGO(name: "Sepsis", desc: ":)"),
                           NGO(name: "Thrombosis", desc: ":)"),
                           NGO(name: "Ultrasound", desc: ":)"),
                           ]),
    ]
  /*
    Mastectomy,
    Myocardial infarction,
    Occult blood screen,
    Remission,
    Sepsis,
    Spinal tap,
    Thrombosis,
    Ultrasound */

    @State private var singleSelection: UUID?
    
    
    var body: some View {
        NavigationView {
            List(selection: $singleSelection) {
                ForEach(Regions) { region in
                    Section(header: Text("TERMS: \(region.name)")) {
                            ForEach(region.NGOs) { organization in
                                NavigationLink(destination: Details()) {
                                    Text(organization.name)
                                }
                            } 
                    }
                }
            }
            .listStyle(.sidebar)
            .navigationTitle("Directory")

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

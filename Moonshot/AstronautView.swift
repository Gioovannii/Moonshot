//
//  AstronautView.swift
//  Moonshot
//
//  Created by Giovanni Gaffé on 2021/10/21.
//

import SwiftUI

struct AstronautView: View {
    let astronaut: Astronaut
    let missions: [Mission]
    
    var body: some View {
        
        GeometryReader { geometry in
            ScrollView(.vertical) {
                VStack {
                    
                    Image(self.astronaut.id)
                    .resizable()
                    .scaledToFit()
                    .frame(width: geometry.size.width)
                    
                    Text(self.astronaut.description)
                        .padding()
                    
                    HStack {
                    Text("Missions : ")
                        
                        ForEach(self.missions) { mission in
                            HStack {
                            Text(mission.displayName)
                            }
                        }
                    }
                }
            }
        }
        .navigationTitle(Text(astronaut.name))
        .navigationBarTitleDisplayMode(.inline)
    }
    
    init(astronaut: Astronaut, mission: [Mission] ) {
        self.astronaut = astronaut
        
        var matches = [Mission]()
        let allMissions: [Mission] = Bundle.main.decode("missions.json")
        
        
        for mission in allMissions {
            if let _ = mission.crew.first(where: { $0.name == astronaut.id }) {
                matches.append(mission)
            }
        }
        
        self.missions = matches
    }
    
}

struct AstronautView_Previews: PreviewProvider {
    static let astronauts: [Astronaut] = Bundle.main.decode("astronauts.json")
    static let missions: [Mission] = Bundle.main.decode("missions.json")

    static var previews: some View {
        AstronautView(astronaut: astronauts[0])
    }
}

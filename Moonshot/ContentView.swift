//
//  ContentView.swift
//  Moonshot
//
//  Created by Giovanni Gaffé on 2021/10/19.
//

import SwiftUI

struct ContentView: View {
    @State private var changeStyle = false
    let astronauts: [Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        NavigationView {
            
            List(missions) { mission in
                NavigationLink(destination: MissionView(mission: mission, astronauts: self.astronauts)) {
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 44, height: 44)
                    
                    VStack(alignment: .leading) {
                        Text(mission.displayName)
                            .font(.headline)
                        Text(mission.formattedLaunchDate)
                        
                    }
                }
                .navigationTitle("Moonshot")
                .toolbar {
                    
                    
                    Button {
                        print("Button tapped")
                    } label: {
                        Text("change style")
                        
                        
                        Spacer()
                        
                        Button("Tap") {
                            let str = "test Message"
                            let url = FileManager().getDocumentDirectory()
                                .appendingPathComponent("message.txt")
                            do {
                                try str.write(to: url, atomically: true, encoding: .utf8)
                                let input = try String(contentsOf: url)
                                print(input)
                            } catch {
                                print(error.localizedDescription)
                            }
                        }
                    }
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

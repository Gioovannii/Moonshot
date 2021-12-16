//
//  ContentView.swift
//  Moonshot
//
//  Created by Giovanni Gaffé on 2021/10/19.
//

import SwiftUI

struct ContentView: View {
    @State private var changeStyle = false
    
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    let colums = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: colums) {
                    ForEach(missions) { mission in
                        NavigationLink {
                            Text("Detail view")
                            MissionView(mission: mission, astronauts: astronauts)
                        } label: {
                            VStack {
                                Image(mission.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                    .padding()
                                    .accessibilityHidden(true)
                                
                                
                                VStack {
                                    Text(mission.displayName)
                                        .font(.headline)
                                        .foregroundColor(.white)
                                    
                                    Text(mission.formattedLaunchDate)
                                        .font(.caption)
                                        .foregroundColor(.white.opacity(0.5))
                                }
                                .padding(.vertical)
                                .frame(maxWidth: .infinity)
                                .background(.lightBackground)
                            }
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(.lightBackground))
                        }
                    }
                }
                .padding([.horizontal, .bottom])
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            
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
            //            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

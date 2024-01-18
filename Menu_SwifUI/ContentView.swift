//
//  ContentView.swift
//  Menu_SwifUI
//
//  Created by Prajwal U on 18/01/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTag: TagColor = .blue
    @State  private var Colorbackground : Color = .white
    
    var body: some View {
        ZStack {
            
            Color(.cyan).opacity(0.1).ignoresSafeArea()
            
            VStack {
                Text("Learning Menus and Options")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding()
                
                HStack {
                    Text("Tap Menu")
                        .font(.largeTitle)
                    Image(systemName: "hand.point.down")
                        .font(.largeTitle)
                }
                .padding(.vertical, 40)
                
                HStack {
                    Spacer()
                    Menu {
                        ControlGroup {
                            Button(action: {}, label: { Label("Add", systemImage: "plus") })
                            Button(action: {}, label: { Label("Edit", systemImage: "pencil") })
                            Button(action: {}, label: { Label("Shop", systemImage: "cart") })
                            Button(action: {}, label: { Label("Duplicate", systemImage: "plus.square.on.square") })
                            Button(action: {}, label: { Label("Add New", systemImage: "plus") })
                            Button(action: {}, label: { Label("Edit Existing", systemImage: "pencil") })
                            Button(action: {}, label: { Label("Duplicate", systemImage: "plus.square.on.square") })
                        }
                        .controlGroupStyle(.compactMenu)
                        Divider()
                        Button(role: .destructive) {} label: { Label("Delete", systemImage: "trash") }
                        
                        Picker("Select the Tag", selection: $selectedTag) {
                            ForEach(TagColor.allCases) { tag in
                                Label(tag.rawValue.capitalized, systemImage: "tag")
                                    .tint(tag.color)
                            }
                        }
                        .paletteSelectionEffect(.symbolVariant(.fill))
                        .pickerStyle(.palette)
                    } label: {
                        Label("Menu", systemImage: "ellipsis").font(.title2)
                    }
                    Spacer()
                }
                .padding()
                
                Text("Long press this button")
                    .font(.title3)
                    .padding()
                    .contextMenu {
                        Button(action: {}, label: { Label("Add to Queue", systemImage: "rectangle.stack.badge.plus") })
                        Button(action: {}, label: { Label("Add to Playlist", systemImage: "play.square.stack") })
                        Button(action: {}, label: { Label("Favorite", systemImage: "star") })
                    }
                
                Text("or click here for preview")
                    .font(.title3)
                    .padding()
                    .contextMenu {
                        Button(action: {}, label: { Label("Account", systemImage: "person.2.crop.square.stack") })
                        Button(action: {}, label: { Label("Settings", systemImage: "gear") })
                        Button(action: {}, label: { Label("Favorite", systemImage: "star") })
                    } preview: {
                        Text("Make your pick").padding().tint(.red).fontDesign(.monospaced)
                    }
            }
        }.fontDesign(.monospaced)
    }
}


#Preview {
    NavigationStack {
        ContentView()
    }
}

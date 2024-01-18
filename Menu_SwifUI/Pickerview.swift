//
//  Pickerview.swift
//  Menu_SwifUI
//
//  Created by Prajwal U on 18/01/24.
//

import SwiftUI

struct Pickerview: View {
    var colors = ["Red", "Green", "Blue", "Tartan"]
    @State private var selectedColor = "Red"

    var body: some View {
        VStack {
            Picker("Please choose a color", selection: $selectedColor) {
                ForEach(colors, id: \.self) {
                    Text($0)
                }
            }
            Text("You Tag is: \(selectedColor)")
        }
    }
}

#Preview {
    Pickerview()
}

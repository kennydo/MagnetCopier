//
//  ContentView.swift
//  MagnetLinkCopier
//
//  Created by Kenny Do on 6/22/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Magnet Link Copier")
                .font(.title)
            
            GroupBox(label:
                    Label("Usage Instructions", systemImage: "info.circle")
            ) {
                Text("""
                Magnet links will automatically open in this app.
                    
                Steps:
                1. Tap a link that starts with "magnet://"
                2. This will show actions you can take
                3. Copy the link to use in another app
                """)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            Spacer()
        }
            .padding()
    }
}

#Preview {
    ContentView()
}

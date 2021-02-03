//
//  ContentView.swift
//  Demo1
//
//  Created by Mimosa on 2021/2/1.
//

import SwiftUI

struct ContentView: View {
    
    @State var counter = 0
    
    var body: some View {
        print("ContentView")
        
        return VStack {
            Button("Tap me!") { counter += 1 }
            LabelView(number: $counter)
        }
    }
}

struct LabelView: View {
    @Binding var number: Int
    
    @ViewBuilder
    var helper: some View {
        if number > 0 {
            Text("\(number)")
        }
    }
    
    var body: some View {
        print("LabelView")
        
        return Group {
            if number > 0 {
                Text("You've tapped \(number) times")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

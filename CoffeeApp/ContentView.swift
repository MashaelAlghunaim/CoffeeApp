//
//  ContentView.swift
//  CoffeeApp
//
//  Created by Mashael Alghunaim on 05/04/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var greenOnPress: Bool = false
    @State private var whiteOnPress: Bool = true
    @State private var blueOnPress: Bool = true
    @State private var number = 0
    
    var body: some View {
        VStack {
            Text("Coffee☕").font(.title)
                .padding()
            Toggle(isOn: $greenOnPress) {
                Text("Include Milk🥛")
                    .font(.title3)
            }
            Toggle(isOn: $whiteOnPress) {
                Text("Iced🧊")
                    .font(.title3)
            }
            Toggle(isOn: $blueOnPress) {
                Text("Spoon of Sugar").font(.title3)
            }
            

            Stepper(value: $number){ Text("Quantity: \(number)")}
            
            Button {
            } label: {
                Text("Order").foregroundColor(.blue)
            }
        
         
    
        }
        .padding()
    }
}

struct ContentView1_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}


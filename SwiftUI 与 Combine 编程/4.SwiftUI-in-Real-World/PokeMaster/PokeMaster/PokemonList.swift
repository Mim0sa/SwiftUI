//
//  PokemonList.swift
//  PokeMaster
//
//  Created by Mimosa on 2020/11/27.
//  Copyright © 2020 OneV's Den. All rights reserved.
//

import SwiftUI

struct PokemonList: View {
    
    @State var expandingIndex: Int?
    
    var body: some View {
        ScrollView {
            ForEach(PokemonViewModel.all) { pokemon in
                PokemonInfoRow(
                    model: pokemon,
                    expanded: self.expandingIndex == pokemon.id
                )
                .onTapGesture {
                    if self.expandingIndex == pokemon.id {
                        self.expandingIndex = nil
                    } else {
                        self.expandingIndex = pokemon.id
                    }
                }
            }
        }
        .overlay(
            VStack {
                Spacer()
                PokemonInfoPanel(model: .sample(id: 1))
            }
            .edgesIgnoringSafeArea(.bottom)
        )
    }
}

struct PokemonList_Previews: PreviewProvider {
    static var previews: some View {
        PokemonList()
    }
}

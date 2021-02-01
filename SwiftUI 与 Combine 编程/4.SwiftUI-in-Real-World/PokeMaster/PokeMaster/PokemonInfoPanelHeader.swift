//
//  PokemonInfoPanelHeader.swift
//  PokeMaster
//
//  Created by Mimosa on 2020/12/2.
//  Copyright © 2020 OneV's Den. All rights reserved.
//

import SwiftUI

extension PokemonInfoPanel {
    struct Header: View {
        let model: PokemonViewModel
        var body: some View {
            HStack(spacing: 18) {
                pokemonIcon
                nameSpecies
                verticalDivider
                VStack(spacing: 12) {
                    bodyStatus
                    typeInfo
                }
            }
        }
        
        var pokemonIcon: some View {
            Image("Pokemon-\(model.id)")
                .resizable()
                .frame(width: 68, height: 68)
        }
        
        var nameSpecies: some View {
            VStack {
                Text(model.name)
                    .bold()
                    .font(.system(size: 22))
                    .foregroundColor(model.color)
                Text(model.nameEN)
                    .bold()
                    .font(.system(size: 13))
                    .foregroundColor(model.color)
                Text(model.genus)
                    .bold()
                    .font(.system(size: 13))
                    .foregroundColor(.gray)
                    .padding(.top, 10)
            }
        }
        
        var verticalDivider: some View {
            Rectangle()
                .frame(width: 1, height: 44)
                .opacity(0.1)
        }
        
        var bodyStatus: some View {
            HStack {
                VStack {
                    Text("身高").foregroundColor(.gray).font(.system(size: 11))
                    Text("体重").foregroundColor(.gray).font(.system(size: 11))
                }
                VStack(alignment: .trailing) {
                    Text(model.height)
                        .foregroundColor(model.color)
                        .font(.system(size: 11))
                    Text(model.weight)
                        .foregroundColor(model.color)
                        .font(.system(size: 11))
                }
            }
        }
        
        var typeInfo: some View {
            HStack {
                ForEach(model.types) { type in
                    Text(type.name)
                        .bold()
                        .frame(width: 36, height: 14)
                        .font(.system(size: 9))
                        .foregroundColor(.white)
                        .background(
                            RoundedRectangle(cornerRadius: 7)
                                .fill(type.color)
                        )
                }
            }
        }
    }
    
}

//
//  SettingRootView.swift
//  PokeMaster
//
//  Created by Mimosa on 2020/12/14.
//  Copyright © 2020 OneV's Den. All rights reserved.
//

import SwiftUI

struct SettingRootView: View {
    var body: some View {
        NavigationView {
            SettingView().navigationBarTitle("设置")
        }
    }
}

struct SettingRootView_Previews: PreviewProvider {
    static var previews: some View {
        SettingRootView()
    }
}

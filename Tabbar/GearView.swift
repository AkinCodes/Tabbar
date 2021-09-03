//
//  GearView.swift
//  Tabbar
//
//  Created by Akin on 03/09/2021.
//

import SwiftUI

struct GearView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("grad6")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
            }
        
        }
    }
}

struct GearView_Previews: PreviewProvider {
    static var previews: some View {
        GearView()
    }
}

//
//  TramView.swift
//  Tabbar
//
//  Created by Akin on 03/09/2021.
//

import SwiftUI

struct TramView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("leaves")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
            }
        
        }
    }
}

struct TramView_Previews: PreviewProvider {
    static var previews: some View {
        TramView()
    }
}

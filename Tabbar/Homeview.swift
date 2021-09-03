//
//  Homeview.swift
//  Tabbar
//
//  Created by Akin on 02/09/2021.
//

import SwiftUI

struct Homeview: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("grad5")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
            }
        
        }
    }
}

struct Homeview_Previews: PreviewProvider {
    static var previews: some View {
        Homeview()
    }
}

//
//  PhoneView.swift
//  Tabbar
//
//  Created by Akin on 03/09/2021.
//

import SwiftUI

struct PhoneView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("yellow")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
            }
        
        }
    }
}

struct PhoneView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneView()
    }
}

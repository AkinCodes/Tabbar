//
//  ContentView.swift
//  Tabbar
//
//  Created by Akin on 02/09/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isfullScreen = false
    @State private var selectedIndex = 0
    let icons = ["house", "gear", "plus", "tram", "candybarphone"]
    var body: some View {
        VStack {
            ZStack {
                Spacer().fullScreenCover(isPresented: $isfullScreen, content: {
                    Button(action: {
                        self.isfullScreen.toggle()
                    }, label: {
                        Text("Dismiss")
                            .frame(width: 200, height: 60, alignment: .center)
                            .background(Color.yellow)
                            .cornerRadius(30)
                    })
                })
                switch selectedIndex {
                
                case 0:
                    Homeview()
                case 1:
                    GearView()
                case 2:
                    NavigationView {
                        VStack {
                            
                        }
                    
                    }
                case 3:
                    TramView()
                default:
                    PhoneView()
                }
                
            }
          //  Divider()
            Spacer()
            HStack {
                ForEach(0..<5) { number in
                    Button(action: {
                        
                        if number == 2 {
                            self.isfullScreen.toggle()
                        }else{
                            selectedIndex = number
                            
                        }
                    }, label: {
                        Spacer()
                        
                        if number == 2 {
                            Image(systemName: icons[number])
                                .font(.system(size: 45, weight: .regular, design: .default))
                                .foregroundColor(.white)
                                .frame(width: 65, height: 65, alignment: .center)
                                .background(Color.blue)
                                .cornerRadius(40)
                            
                        }else{
                            Image(systemName: icons[number])
                                .font(.system(size: 35, weight: .regular, design: .default))
                                .foregroundColor(self.selectedIndex == number ? .black : Color.gray)
                                .frame(width: 60, height: 60, alignment: .center)
                            
                        }
                       
                        Spacer()
                    })
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
          //  .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            
    }
}

//
//  ContentView.swift
//  LoginUI
//
//  Created by dam2 on 15/2/24.
//

import SwiftUI

@State var isOn: Bool = false

struct ContentView: View {
    var body: some View {
        ZStack {
            Color
                .cyan
                .ignoresSafeArea(.all)
            
            Circle()
                .foregroundStyle(.bar)
                .frame(width: 700)
            
            Circle()
                .foregroundStyle(.white)
                .frame(width: 500)
            
            VStack{
                Text("Iniciar sesión")
                    .font(.largeTitle)
                
                TextField("Nombre de usuario", text:
                        .constant(""))
                        .frame(width: 300, height: 50)
                        .background(.bar)
                        .clipShape(.buttonBorder)
                
                SecureField("Contraseña", text:
                        .constant(""))
                        .frame(width: 300, height: 50)
                        .background(.bar)
                        .clipShape(.buttonBorder)
                
                HStack{
                    Toggle(isOn: $isOn) {
                        
                    }
                    .frame(width: 50)
                    .toggleStyle(SwitchToggleStyle(tint: .cyan))
                    
                    Text("Recordar contraseña")
                }.padding(5)
                
                Button("Login") {
                    
                }
                .padding(.leading, 30)
                .padding(.trailing, 30)
                .padding()
                .background(.cyan)
                .foregroundStyle(.white)
                .clipShape(.buttonBorder)
                
                Text("Recuperar Contraseña")
                    .foregroundColor(.cyan)
                    .frame(height: 50)
                    .padding(.trailing, -100)
            }
        }
    }
}

#Preview {
    ContentView()
}

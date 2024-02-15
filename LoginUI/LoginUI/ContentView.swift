//
//  ContentView.swift
//  LoginUI
//
//  Created by dam2 on 15/2/24.
//

import SwiftUI

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
                    Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                        
                    }.frame(width: 50)
                        .foregroundStyle(.blue)
                    
                    Text("Recordar contraseña")
                        .frame(minWidth: 30)
                }
                
                Button("Login") {
                    
                }
                .padding()
                .background(.cyan)
                .foregroundStyle(.white)
                .clipShape(.buttonBorder)
                
                Text("Recuperar Contraseña")
            }
        }
    }
}

#Preview {
    ContentView()
}

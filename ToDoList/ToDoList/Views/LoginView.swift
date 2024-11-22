//
//  LoginView.swift
//  ToDoList
//
//  Created by Zachary Bennett on 11/21/24.
//

import SwiftUI

struct LoginView: View {
    @State var email=""
    @State var pass=""
    var body: some View {
        VStack {
            // // // ///
            // header //
            // // // ///
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundStyle(Color.pink)
                    .rotationEffect(Angle(degrees: 15))
                    .offset(y:-100)
                VStack {
                    Text("To Do List")
                        .foregroundStyle(Color.white)
                        .font(.system(size: 50))
                        .bold()
                    Text("Get Things Done")
                        .font(.system(size: 30))
                        .foregroundStyle(Color.white)
                }
                .offset(y:-65)
            }
            .frame(width: UIScreen.main.bounds.width * 3, height:300)
            
            // // // // ////
            // login form //
            // // // // ////
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .backgroundStyle(Color.white)
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password", text: $pass)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button {
                        // attempt login
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(Color.blue)
                            Text("Log in")
                                .foregroundStyle(Color.white)
                                .bold()
                        }
                    }
                }
                .scrollContentBackground(.hidden)
                .background(Color("ColorBackground"))
            }
            .background(Color("ColorBackground"))
            
            // // // // // // //
            // create account //
            // // // // // // //
            VStack {
                Text("New around here?")
                Button ("Create An Account") {
                    // Show registration
                }
            }
        }
        .background(Color("ColorBackground"))
    }
}

#Preview {
    LoginView()
}

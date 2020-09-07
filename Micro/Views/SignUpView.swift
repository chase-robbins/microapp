//
//  SignUpView.swift
//  Micro
//
//  Created by Chase Robbins on 9/6/20.
//  Copyright © 2020 Heroic Nutrition. All rights reserved.
//

import SwiftUI

struct SignUpView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @EnvironmentObject var session: SessionStore
    
    @State var signup_email:String = ""
    @State var signup_password:String = ""
    @State var error:String = ""
    @State var forAlert = true

    
    func signUp(){
        session.signUp(email: signup_email, password: signup_password) { (result, error) in
            if let error = error {
                self.error = error.localizedDescription
            } else {
                self.signup_email = ""
                self.signup_password = ""
            }
        }
    }

    var body: some View {
            VStack{
                ZStack{
                    Image("Login_Abstract")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.bottom, 200)
                    Spacer()
                    VStack{
                        HStack{
                            Text("We're glad\nyou're here.")
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .lineLimit(2)
                                .font(.system(size: 45, weight: .light))
                                .padding(.leading, 30)
                                .padding(.top, 200)
                            
                            Spacer()
                        }
                        Group{
                            TextField("email", text: $signup_email)
                            
                            
                            Divider()
                                .frame(height: 1)
                                .background(Color.gray)
                                .padding(.top,-5)
                            
                            
                            SecureField("password", text: $signup_password)
                                .padding(.top)
                            
                            Divider()
                                .frame(height: 1)
                                .background(Color.gray)
                                .padding(.top,-5)
                            
                            Button(action: {
                                print("hello")
                            }) {
                                Text("sign up")
                                    .multilineTextAlignment(.leading)
                                    .foregroundColor(.black)
                                    .padding(.top)
                                Spacer()
                            }
                            if error != "" {
                                Text("").alert(isPresented: $forAlert) {
                                    Alert(
                                        title: Text("Email or Password Incorrect"),
                                        message: Text("Try again")
                                    )
                                }
                                
                            }
                            
                        }.padding(.horizontal, 30)
                        
                    }
                }
                Spacer()
                HStack{
                    
                    Button(action: signUp){
                        Text("sign in")
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.black)
                            .padding(.top)
                        Spacer()
                    }
                    
                    
                    //                }
                    Button(action: {
                        //                    self.page.id = "forgotpassword"
                    }) {
                        Spacer()
                        Text("is my data safe?")
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.black)
                            .padding(.top)
                    }
                }.padding(.horizontal, 30)
            }

    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
        .environmentObject(ViewRouter())
        .environmentObject(SessionStore())
    }
}

//
//  LoginPage.swift
//  Micro
//
//  Created by Chase Robbins on 9/5/20.
//  Copyright © 2020 Heroic Nutrition. All rights reserved.
//

import SwiftUI


struct LoginPage: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @EnvironmentObject var session: SessionStore
    
    //State Variables for Login Screen
    @State var login_email:String = ""
    @State var login_password:String = ""
    @State var error:String = ""
    @State var forAlert = true
    
    func signIn(){
        session.signIn(email: login_email, password: login_password) { (result, error) in
            if let error = error {
                self.error = error.localizedDescription
            } else {
                self.login_email = ""
                self.login_password = ""
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
                        Text("Welcome\nBack")
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                            .lineLimit(2)
                            .font(.system(size: 45, weight: .light))
                            .padding(.leading, 30)
                            .padding(.top, 200)
                        
                        Spacer()
                    }
                    Group{
                        TextField("email", text: $login_email)
                        
                        
                        Divider()
                            .frame(height: 1)
                            .background(Color.gray)
                            .padding(.top,-5)
                        
                        
                        SecureField("password", text: $login_password)
                            .padding(.top)
                        
                        Divider()
                            .frame(height: 1)
                            .background(Color.gray)
                            .padding(.top,-5)
                        
                        Button(action: signIn) {
                            Text("sign in")
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
                
                Button(action: {
                    
                    self.viewRouter.currentPage = "welcome"
                    
                }){
                    Text("sign up")
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.black)
                        .padding(.top)
                    Spacer()
                }
                
                
                Button(action: {
                }) {
                    Spacer()
                    Text("forgot password")
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.black)
                        .padding(.top)
                }
            }.padding(.horizontal, 30)
        }
    }
    
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage().environmentObject(ViewRouter())
            .environmentObject(SessionStore())
        
    }
}

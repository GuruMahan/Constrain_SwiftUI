//
//  ContentView.swift
//  ConstrainSwiftUI
//
//  Created by Guru Mahan on 09/01/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader{ geometry in
            NavigationView{
            VStack(spacing:40){
                
                VStack(alignment: .center,spacing:15){
                    OnBoardingView().ImageOnTop
                        .frame(width: geometry.size.width, height: 270)
                    OnBoardingView().Title
                    OnBoardingView().subTitle
            }
                .frame(width: geometry.size.width, height: 270)

            
                OnBoardingView().secondSubtitle
                .frame(width: geometry.size.width, height: 75, alignment: .center)
                .padding(30)
                
              navigatinButton
               
                Spacer(minLength: 14)
           //    lastString
                Spacer().frame(height:20)
                            
            }
            
            .edgesIgnoringSafeArea(.all)
            .background(Color.black)
        }
            .frame(width: geometry.size.width, height: geometry.size.height)
            .navigationBarBackButtonHidden(true)
        }
        
    }
    
  @ViewBuilder  var navigatinButton:some View{
        VStack(alignment:.center){
            
//          NavigationLink(
//            destination: CreateAccountView(),
//            label: {
//                Text("Create Account")
//            })
//
//
//            .font(.custom("Montserrat-Medium", size: 18))
//            .foregroundColor(.white)
//            .frame(width: 230, height: 42, alignment: .center)
//            .overlay(RoundedRectangle(cornerRadius: 18)
//                        .stroke(Color.yellow, lineWidth: 1.8))
            HStack{
                Text("Already have an account?")
                    .font(.custom("Montserrat-Regular", size: 12))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
//                NavigationLink(
//                    destination: LoginView(LoginViewM: LoginViewModel()),
//                  label: {
//                      Text("Log In")
//                  })
                
                .font(.custom("Montserrat-Regular", size: 12))
                .foregroundColor(.yellow)
            }
          

        }
    }
}

struct OnBoardingView: View {
   
    var body: some View{
        VStack{
            
        }
    }


var ImageOnTop:some View{
   Image("headerPicture")
       .resizable()
       
}

var Title:some View {
   Text("Hey You")
       .font(.custom("Montserrat-Medium", size: 48))
       .foregroundColor(.white)
       
  
}
var subTitle:some View{
   Text("Out With A Porpuse ")
       .font(.custom("Montserrat-SemiBold", size: 16))
       .foregroundColor(.white)
}
var secondSubtitle:some View{
  
       Text("Find and build communities with people in your area. \n #GoodbyeCatfish \n #HellowConnections")
           .font(.custom("Montserrat-Regular", size: 16))
           .foregroundColor(.white)
           .multilineTextAlignment(.center)

}



    var lastString: some View{
        HStack{
            Text("By using this app you agree with the")
                .foregroundColor(.white)
                .font(.custom("Montserrat-Medium", size: 11))
            Text("terms of services")
                .underline(true, color: .yellow)
                .foregroundColor(.yellow)
                .font(.custom("Montserrat-Medium", size: 11))
            
        }
        .padding(30)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}










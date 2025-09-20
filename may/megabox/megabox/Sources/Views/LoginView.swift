//
//  LoginView.swift
//  megabox
//
//  Created by 백지은 on 9/20/25.
//

import SwiftUI

struct LoginView: View {
    
    @State private var id: String=""
    @State private var pw: String=""
    
    
    var body: some View {
        VStack{
            headerSection
            Spacer()
            inputSection
            Spacer().frame(height: 35)
            loginSection
            Spacer().frame(height: 35)
            signupSection
            Spacer().frame(height: 23)
            imgSection
        }
        Spacer().frame(height: 50)
    }
    
    //헤더
    private var headerSection: some View {
        Text("로그인")
            .font(.semiBold24)
            .padding(.top, 25)
    }
    
    //입력 필드
    private var inputSection: some View {
        
        VStack(alignment: .leading){
            TextField("아이디", text: $id)
                .font(.medium16)
                .foregroundColor(.gray03)
            Divider()
            
            Spacer().frame(height:40)
            
            TextField("비밀번호", text: $pw)
                .font(.medium16)
                .foregroundColor(.gray03)
            Divider()
        }.padding(.horizontal, 16)
        
        
    }
    
    //로그인
    private var loginSection: some View {
        
        VStack(alignment: .center, spacing: 17){
            Button(action: {
                print("로그인 시도")
            }, label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.purple03)
                    Text("로그인")
                        .font(.bold18)
                        .foregroundStyle(.white)
                }
            }).frame(height:54)
            
            VStack(alignment: .center){
                Text("회원가입")
                    .font(.medium13)
                    .foregroundColor(.gray04)
            }
            
        }.padding(.horizontal, 25)
    }
    
    //소셜 회원가입
    private var signupSection: some View {
        
        HStack(alignment: .center){
            Button (action: {
                print("네이버 로그인")
            }, label: {
                Image(.naver)
            })
            
            Spacer()
            
            Button (action: {
                print("카카오 로그인")
            }, label: {
                Image(.kakao)
            })
            
            Spacer()
            
            Button (action: {
                print("애플 로그인")
            }, label: {
                Image(.apple)
            })
            
        }.frame(width:266, height:40)
    }
    
    //이미지
    private var imgSection: some View {
        Image(.umc)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding(16)
    }
}

#Preview {
    LoginView()
}

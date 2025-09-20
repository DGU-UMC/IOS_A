//
//  LoginView.swift
//  Megabox
//
//  Created by 송민교 on 9/19/25.
//

import SwiftUI

struct LoginView: View{
    @State private var id: String=""
    @State private var pw: String=""
    
    var body: some View{
        loginGroup
    }
    
    private var loginGroup: some View{
        // 전체 컨텐츠
        VStack{
            // 상단 컨텐츠
            VStack{
                // 로그인 상단 네비게이션
                HStack{
                    Text("로그인")
                        .font(.pretend(type: .semibold, size: 24))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.black)
                    .frame(maxWidth: .infinity, alignment: .top)}
                
                Spacer()
                
                // 로그인 영역
                VStack{
                    // 로그인 영역 - 아이디, 비밀번호
                    VStack(spacing: 40){
                        // 텍스트 필드
                        VStack(spacing: 4){
                            TextField("아이디", text: $id)
                                .font(.pretend(type: .medium, size: 16))
                                .foregroundStyle(Color.gray03)
                            Divider()
                                .frame(height: 1)
                                .background(Color.gray02)}
                        // 텍스트 필드
                        VStack(spacing: 4){
                            TextField("비밀번호", text: $pw)
                                .font(.pretend(type: .medium, size: 16))
                                .foregroundStyle(Color.gray03)
                            Divider()
                                .frame(height: 1)
                                .background(Color.gray02)
                        }
                    }.frame(height: 86)
                    
                    Spacer().frame(height: 90)
                    
                    // 로그인 영역 - 버튼
                    VStack(spacing: 17){
                        Button(action: {}){
                            Text("로그인")
                                .font(.pretend(type: .bold, size: 18))
                                .frame(maxWidth: .infinity, minHeight: 54, alignment: .center)
                                .foregroundStyle(Color.white)
                                .background(Color.purple03)
                                .cornerRadius(12)
                        }
                        Text("회원가입")
                            .font(.pretend(type: .medium, size: 13))
                            .foregroundStyle(Color.gray03)
                    }.frame(height: 40)}.frame(height: 323)
                
                Spacer()
                
                // 소셜 로그인
                HStack(alignment: .top){
                    Image("naver")
                    Spacer()
                    Image("kakao")
                    Spacer()
                    Image("apple")
                }.frame(width: 266, height: 40, alignment: .top)
            }
            .frame(height: 516)
            .padding(.horizontal, 0.5)
            
            Spacer()
            
            // 홍보 이미지(umc로고)
            Image("umc")
                .resizable()
                .frame(height: 266)
            
            Spacer()
            
        }.padding(.horizontal, 16.5)
    }
}

enum PREVIEW_DEVICE_TYPE : String, CaseIterable {
    case iPhone_15_Pro = "iPhone 16 Pro Max"
    case iPhone_11 = "iPhone 11"
    
    var previewDevice: PreviewDevice {
        .init(rawValue: self.rawValue)
    }
}

func devicePreviews<Content: View>(
    content: @escaping () -> Content
) -> some View {
    ForEach(PREVIEW_DEVICE_TYPE.allCases, id: \.self) { device in
        content()
            .previewDevice(device.previewDevice)
            .previewDisplayName(device.rawValue)
    }
}

struct LoginView_Preview: PreviewProvider {
    static var previews: some View {
        devicePreviews {
            LoginView()
        }
    }
}

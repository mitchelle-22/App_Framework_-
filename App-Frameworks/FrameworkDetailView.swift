//
//  FrameworkDetailView.swift
//  App-Frameworks
//
//  Created by MIch on 2023/11/16.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework : Framework
    @Binding var isShowingDetailView : Bool
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button{
                    isShowingDetailView = false
                    
                }label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44,height: 44)
                }
            }
            .padding()
            
           
            
            Spacer()
            
            FrameWorkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            
            Button{
                
            }label: {
                AFButton(title: "Learn More")
            }
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework,
                        isShowingDetailView: .constant(false))
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}


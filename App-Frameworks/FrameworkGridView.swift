//
//  FrameworkGridView.swift
//  App-Frameworks
//
//  Created by MIch on 2023/11/16.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack{
            LazyVGrid(columns: columns){
                FrameWorkTitleView(imageName: "app-clip", name: "App Clips")
                FrameWorkTitleView(imageName: "app-clip", name: "App Clips")
                FrameWorkTitleView(imageName: "app-clip", name: "App Clips")
                FrameWorkTitleView(imageName: "app-clip", name: "App Clips")
                FrameWorkTitleView(imageName: "app-clip", name: "App Clips")
                FrameWorkTitleView(imageName: "app-clip", name: "App Clips")
              
            }
           
        }
            
        
        
    }
}

#Preview {
    FrameworkGridView()
}

struct FrameWorkTitleView: View{
    let imageName : String
    let name : String
    
    var body : some View{
        VStack{
            Image(imageName)
                .resizable()
                .frame(width: 90,height: 90)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
            
        }
    }
}

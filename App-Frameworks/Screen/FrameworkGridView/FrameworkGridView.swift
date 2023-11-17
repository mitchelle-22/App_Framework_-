//
//  FrameworkGridView.swift
//  App-Frameworks
//
//  Created by MIch on 2023/11/16.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
  
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns){
                    ForEach(MockData.frameworks){
                        framework in
                        FrameWorkTitleView(framework: framework
                        )
                        .onTapGesture{
                            viewModel.selectedFramework = framework
                        }
                    }
                }
            }
            
            .navigationTitle("🍏 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView){
                FrameworkDetailView(framework:viewModel.selectedFramework!,isShowingDetailView: $viewModel.isShowingDetailView)
                
            }
        }
     }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}


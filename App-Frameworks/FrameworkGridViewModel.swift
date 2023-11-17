//
//  FrameworkGridViewModel.swift
//  App-Frameworks
//
//  Created by MIch on 2023/11/17.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject{
    var selectedFramework: Framework?{
        didSet{
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
    
}

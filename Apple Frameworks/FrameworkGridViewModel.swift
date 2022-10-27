//
//  FrameworkGridViewModel.swift
//  Apple Frameworks
//
//  Created by Pavel Bohomolnyi on 27/10/2022.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
}

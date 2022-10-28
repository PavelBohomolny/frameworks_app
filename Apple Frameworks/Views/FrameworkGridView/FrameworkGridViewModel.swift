//
//  FrameworkGridViewModel.swift
//  Apple Frameworks
//
//  Created by Pavel Bohomolnyi on 27/10/2022.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}

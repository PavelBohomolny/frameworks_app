//
//  FrameworkDetailView.swift
//  Apple Frameworks
//
//  Created by Pavel Bohomolnyi on 27/10/2022.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @Binding var isShowingDetailView: Bool
    
    var framework: Framework
    
    var body: some View {
        
        VStack {
            
            // X-button
            HStack {
                
                Spacer()
                
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            
            Spacer()
            
            // Icon + Name
            FrameworkTitleView(framework: framework)
            
            // Description
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            // Button to webpage
            Button {
                
            } label: {
                AFButton(title: "Learn More")
            }
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(isShowingDetailView: .constant(false), framework: MockData.sampleFramework)
    }
}

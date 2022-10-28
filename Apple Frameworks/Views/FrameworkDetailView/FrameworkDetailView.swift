//
//  FrameworkDetailView.swift
//  Apple Frameworks
//
//  Created by Pavel Bohomolnyi on 27/10/2022.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var framework: Framework
    
    var body: some View {
        
        VStack {
            
            // X-button
            XDismissButton(isShowingDetailView: $isShowingDetailView)
            
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
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        } // or sheet
        .fullScreenCover(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString)!)
        }
        //             Alternative way via Link directly to Safari browser
        //             Link("Learn More", destination: URL(string: framework.urlString)!)
        //                            .font(.title2)
        //                            .fontWeight(.semibold)
        //                            .frame(width: 200, height: 50)
        //                            .background(Color.red)
        //                            .foregroundColor(.white)
        //                            .cornerRadius(10)
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(isShowingDetailView: .constant(false), framework: MockData.sampleFramework)
    }
}

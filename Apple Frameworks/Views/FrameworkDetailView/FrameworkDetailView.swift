//
//  FrameworkDetailView.swift
//  Apple Frameworks
//
//  Created by Pavel Bohomolnyi on 27/10/2022.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @State private var isShowingSafariView = false
    
    var framework: Framework
    
    var body: some View {
        
        VStack {
                    
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
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .tint(.red)
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
        FrameworkDetailView(framework: MockData.sampleFramework)
    }
}

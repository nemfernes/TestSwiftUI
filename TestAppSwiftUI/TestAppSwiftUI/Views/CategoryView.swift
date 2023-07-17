//
//  CategoryView.swift
//  TestAppSwiftUI
//
//  Created by MAC on 14.07.2023.
//

import SwiftUI

struct CategoryView: View {
    
    var title: String
    var body: some View {
        ZStack {
            Color.backgroundLightColor
                .ignoresSafeArea()
            HStack {
                Text(title)
                    .font(.custom("Inter-Regular", size: 12))
                    .foregroundColor(.white)
                .frame(alignment: .leading)
                .padding(14)
                Spacer()
                Image("arrowDown_icon")
                    .resizable()
                    .frame(width: 8,height: 4)
                    .padding(17)
            }
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(title: "")
    }
}

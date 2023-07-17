//
//  PromptCell.swift
//  TestAppSwiftUI
//
//  Created by MAC on 17.07.2023.
//
//
//  PromptView.swift
//  TestAppSwiftUI
//
//  Created by MAC on 17.07.2023.
//

import SwiftUI

struct PromptCell: View {
    
    var title: String
    var description: String
    
    var body: some View {
        ZStack {
            Color.backgroundLightColor
                .ignoresSafeArea()
            VStack {
                Text(title)
                .foregroundColor(Color.mint)
                .font(.custom("Inter-Regular", size: 12))
                .padding(EdgeInsets(top: 10, leading: 15, bottom: 6, trailing: 10))
                .frame(maxWidth: .infinity ,alignment: .leading)
                Text(description)
                .frame(alignment: .leading)
                .lineLimit(nil)
                .foregroundColor(Color.white)
                .kerning(0.4)
                .font(.custom("Inter-Regular", size: 10))
                .padding(EdgeInsets(top: 0, leading: 15, bottom: 7, trailing: 10))
                HStack(spacing: 5) {
                    Text("TOPIC")
                    .frame(alignment: .leading)
                    .foregroundColor(Color.darkGreenColor)
                    .font(.custom("Inter-Bold", size: 12))
                    .padding(5)
                    Image("arrow_right")
                        .resizable()
                        .frame(width: 12,height: 7)
                    Text("CATEGORY")
                    .frame(alignment: .leading)
                    .font(.custom("Inter-Bold", size: 12))
                    .foregroundColor(Color.darkGreenColor)
                    .padding(0)
                } .frame(maxWidth: .infinity, alignment: .leading)
                  .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
            } .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        }
    }
}

struct PromptCell_Previews: PreviewProvider {
    static var previews: some View {
        PromptCell(title: "", description: "")
    }
}

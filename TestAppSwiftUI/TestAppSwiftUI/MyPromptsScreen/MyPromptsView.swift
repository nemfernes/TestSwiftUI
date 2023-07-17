//
//  MyPromptsView.swift
//  TestAppSwiftUI
//
//  Created by MAC on 14.07.2023.
//

import SwiftUI

struct MyPromptsView: View {
    
    @State private var search: String = ""
    var promptList = [
        Prompt(id: 0, title: "Lorem ipsum dolor sit amet, consectetur adipiscing eltlit... ", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lorem felis, pharetra vel sodales non, accumsan in mi. Pelentesque hendreeurit nec risus..."),
        Prompt(id: 1, title: "Lorem ipsum dolor sit amet, consectetur adipiscing eltlit... ", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lorem felis, pharetra vel sodales non, accumsan in mi. Pelentesque hendreeurit nec risus..."),
        Prompt(id: 2, title: "Lorem ipsum dolor sit amet, consectetur adipiscing eltlit... ", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lorem felis, pharetra vel sodales non, accumsan in mi. Pelentesque hendreeurit nec risus..."),
        Prompt(id: 3, title: "Lorem ipsum dolor sit amet, consectetur adipiscing eltlit... ", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lorem felis, pharetra vel sodales non, accumsan in mi. Pelentesque hendreeurit nec risus...")
    ]
    
    var body: some View {
        ZStack {
            Color.backgroundColor
                .ignoresSafeArea()
            VStack {
                HStack() {
                    HStack(spacing: 10) {
                        Image("logo_icon")
                            .resizable()
                            .frame(width: 18, height: 25)
                            .padding(.leading)
                        Text("My Prompts")
                            .font(.custom("Inter-Bold", size: 20))
                            .foregroundColor(.white)
                    } .frame(maxWidth: .infinity, alignment: .leading)
                    HStack(spacing: 15) {
                        Button(action: {}) {
                            HStack {
                                Image("stars_icon")
                                    .resizable()
                                    .frame(width: 13, height: 14)
                                    .padding(EdgeInsets(top: 8, leading: 7, bottom: 8, trailing: 0))
                                Text("PRO")
                                    .padding(.trailing, 7)
                                
                            }.font(.custom("Inter-Bold", size: 20))
                        }
                        .background(Color.yellowColor)
                        .foregroundColor(Color.black)
                        .cornerRadius(7)
                        Button(action: {}) {
                            Image("settings_icon")
                                .resizable()
                                .frame(width: 16, height: 16)
                        }
                    }
                } .frame(maxWidth: .infinity, alignment: .top)
                    .padding(EdgeInsets(top: 15, leading: -15, bottom: 0, trailing: 0))
                
                Divider()
                    .background(Color.darkGreenColor)
                HStack(spacing: 8) {
                    ZStack(alignment: .trailing) {
                        TextField("", text: $search)
                            .placeholder(when: search.isEmpty) {
                                Text("Search").foregroundColor(.greyTextColor)
                                    .font(.custom("Inter-Regular", size: 12))
                                    .foregroundColor(.greyTextColor)
                            }
                            .font(.custom("Inter-Regular", size: 12))
                            .padding(EdgeInsets(top: 5, leading: 14, bottom: 5, trailing: 6))
                            .overlay(RoundedRectangle(cornerRadius: 7).strokeBorder(Color.greyTextColor, style: StrokeStyle(lineWidth: 1.0)))
                        Button(action: {}) {
                            HStack {
                                Image("search_icon")
                                    .resizable()
                                    .frame(width: 9, height: 9, alignment: .center)
                            }
                        } .frame(width: 32, height: 26)
                            .background(Color.greyTextColor)
                            .cornerRadius(7)
                    }
                    Button(action: {}) {
                        HStack {
                            Image("lamp_icon")
                                .resizable()
                                .frame(width: 8, height: 10)
                                .padding(EdgeInsets(top: 7, leading: 0, bottom: 7, trailing: -5))
                            Text("Create")
                        }.font(.custom("Inter-Medium", size: 10))
                    }
                    .frame(width: 66, height: 24)
                    .background(Color.mintColor)
                    .foregroundColor(Color.black)
                    .cornerRadius(8)
                } .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                VStack(spacing: 0) {
                    CategoryView(title: "All topic")
                        .frame(maxHeight: 46, alignment: .leading)
                    Divider()
                        .frame(minHeight: 1)
                        .overlay(Color.greyTextColor)
                    CategoryView(title: "All category")
                        .frame(maxHeight: 46, alignment: .leading)
                }
                .cornerRadius(11)
                .overlay(
                    RoundedRectangle(cornerRadius: 11).stroke(Color.greyTextColor, lineWidth: 1))
                Text("My Prompts (21)")
                    .padding(EdgeInsets(top: 15, leading: 0, bottom: 5, trailing: 0))
                    .font(.custom("Inter-Bold", size: 12))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                List {
                    ForEach(promptList) { item in
                        PromptCell(title: item.title, description: item.description)
                            .cornerRadius(8)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8).stroke(Color.greyTextColor, lineWidth: 1))
                            .listRowInsets(EdgeInsets(top: 5, leading: 2, bottom: 10, trailing: 2))
                            .listRowBackground(Color.clear)
                    }
                } .listStyle(.plain)
                    .listRowSeparator(.hidden)
                    .modifier(ListBackgroundModifier())
                    .scrollIndicators(ScrollIndicatorVisibility.hidden)
                Spacer()
            } .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
        }
    }
}

struct MyPromptsView_Previews: PreviewProvider {
    static var previews: some View {
        MyPromptsView()
    }
}

//
//  BasicCardView.swift
//  TabViewExample
//
//  Created by Sasha Myshkina on 25.09.2022.
//

import SwiftUI

struct BasicCardView: View {
    //MARK: Model
    var model: any BasicCardModelProtocol
    
    //MARK: UI
    enum UI {
        static let defaultOffset: CGFloat = 16
        static let largerOffset: CGFloat = 30
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(model.color)
                
            VStack(alignment: .leading, spacing: UI.defaultOffset) {
                title(model.title)
                
                section(model.subtitle)
                section(model.description)
            }
            .padding(.horizontal, UI.defaultOffset)
            
        }
        .padding(UI.largerOffset)
    }
    
    private func title(_ text: String) -> some View {
        return HStack {
            Text(text)
                .font(Font.system(size: 30, weight: .bold))
                .multilineTextAlignment(.leading)
        }.padding(.bottom, UI.defaultOffset)
    }
    
    private func section(_ text: String) -> some View {
        let stack = VStack {
            HStack {
                Text("Section: ")
                    .font(.subheadline)
                    .foregroundColor(Color.gray.opacity(0.8))
                    .padding([.vertical], -10)
                Spacer()
            }
            
            Text(text)
                .font(.title2)
                .padding(.bottom, UI.defaultOffset)
        }
        return stack
    }
}

struct BasicCardView_Previews: PreviewProvider {
    static var previews: some View {
        BasicCardView(model: BasicCardModel(id: 0))
    }
}

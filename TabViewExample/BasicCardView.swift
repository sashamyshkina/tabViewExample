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
                Text(model.title)
                    .font(.largeTitle)
                
                Text(model.subtitle)
                    .font(.title2)
                    .padding(.bottom, UI.defaultOffset)
                
                Text(model.description)
                    .font(.body)
            }
            .padding(.horizontal, UI.defaultOffset)
            
        }
        .padding(UI.largerOffset)
    }
}

struct BasicCardView_Previews: PreviewProvider {
    static var previews: some View {
        BasicCardView(model: BasicCardModel(id: 0))
    }
}

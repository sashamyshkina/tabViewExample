//
//  ContentView.swift
//  TabViewExample
//
//  Created by Sasha Myshkina on 25.09.2022.
//

import SwiftUI

struct ContentView: View {
    var cards: [BasicCardModel] = BasicCardModel.getExampleModels(count: 10)
    
    var body: some View {
        VStack {
            cardContainerView
        }
        .padding()
    }
    
    
    private var cardContainerView: some View {
        let view = VStack(spacing: 0) {
            TabView() {
                ForEach(cards, id: \.id) { model in
                    BasicCardView(model: model)
                        .padding(.bottom)
                }
            }
            /// Comment next line if you need to display dots representing current index
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            /// Uncomment next line if you need to display dots representing current index
            //.tabViewStyle(.page(indexDisplayMode: .always))
        }
        return view
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

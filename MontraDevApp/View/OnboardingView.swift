//
//  OnboardingView.swift
//  MontraDevApp
//
//  Created by Macbook Pro on 18/04/24.
//

import SwiftUI

struct OnboardingView: View {
    @State private var selectedTab = 0
    var tabs: [Onboarding] = Onboarding.data
    let dotIndicator = UIPageControl.appearance()
    var body: some View {
        VStack {
            TabView(selection: $selectedTab) {
                ForEach(tabs) {
                    tab in OnboardingSingleView(content: tab)
                        .tag(tab.tag)
                }
            }
            .animation(.easeInOut, value: selectedTab)
            // .onAppear = ketika halaman pertama kali diload maka
//            .onAppear{
//                dotIndicator.currentPageIndicatorTintColor = UIColor(named: "Violet100")
//                dotIndicator.pageIndicatorTintColor = UIColor(named: "Violet20")
//            }
            // buat swipe ke kanan kiri
            .tabViewStyle(PageTabViewStyle())
            //.indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            CustomDotIndicator(count: tabs.count, selectedTab: $selectedTab)
                .padding([.top, .bottom], 10)
        }
    }
}

#Preview {
    OnboardingView()
}

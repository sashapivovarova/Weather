//
//  TitleLabel.swift
//  Weather
//
//  Created by Anastasia Grey on 2023/12/11.
//

import SwiftUI

struct TitleLabel: View {
    let titleText: String
    var body: some View {
        Text(titleText)
            .font(.title)
    }
}

#Preview {
    TitleLabel(titleText: "sample")
}

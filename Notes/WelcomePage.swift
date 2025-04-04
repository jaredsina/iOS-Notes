//
//  WelcomePage.swift
//  Notes
//
//  Created by Jared Sinai Hernandez Adame on 4/1/25.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 30).foregroundStyle(.tint).frame(width: 150, height: 150)
            Text("Welcome to the Notes App").font(.title).fontWeight(.semibold).padding().border(.white, width: 1.5)
            Text("Take notes effortlessly with the Notes App, the intuitive and lightweight iOS app designed for quick journaling, to-do lists, and important reminders.").font(.title2).border(.white,width: 1.5)
        }
        .border(.orange, width:1.5)
        .padding() // prevents rectangle from going to the edge of screen
        .border(.blue,width:1.3)
    }
}

//#Preview {
//    WelcomePage()
//}

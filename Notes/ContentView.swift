//
//  ContentView.swift
//  Notes
//
//  Created by Jared Sinai Hernandez Adame on 4/1/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
//    @Environment(\.modelContext) private var modelContext
//    @Query private var items: [Item]

    /// body by default centers items
    var body: some View {
        
            ///auto stacks top to bottom
            HStack{
                Text("Notes App")
                ///Use SF Symbols system which provides a collection of icons
                Image(systemName: "list.bullet.clipboard").foregroundStyle(Color.blue)
            }.font(.largeTitle).padding(20)
            
            /// Scrollview makes content scrollable
            ScrollView{
                /// Stack vertically, auto centers text
                VStack(spacing: 10){
                    
                    Note(date:"April 1 2025", text: "Today was a good day, I had fun playing soccer and coding a new project", number: 1, isImportant: true)
                    Note(date:"April 2 2025", text: "Today was an okay day, I did okay things", number: 2, isImportant: false)
                    Note(date: "April 3 2025", text: "Had a productive morning, finished a lot of work.", number: 3, isImportant: true)
                    Note(date: "April 4 2025", text: "Relaxed and watched some movies, much needed break.", number: 4, isImportant: false)
                    Note(date: "April 5 2025", text: "Went for a long walk, felt refreshed.", number: 5, isImportant: false)
                    Note(date: "April 6 2025", text: "Learned a new SwiftUI concept, pretty exciting!", number: 6, isImportant: true)
                    Note(date: "April 7 2025", text: "Cooked a new recipe today, turned out great!", number: 7, isImportant: false)
                    Note(date: "April 8 2025", text: "Started a new coding project, feeling motivated.", number: 8, isImportant: true)
                    Note(date: "April 9 2025", text: "Had a fun time catching up with friends.", number: 9, isImportant: false)
                    Note(date: "April 10 2025", text: "Worked out in the morning, felt energized.", number: 10, isImportant: true)
                    Note(date: "April 11 2025", text: "Read an interesting book, learned something new.", number: 11, isImportant: false)
                    Note(date: "April 12 2025", text: "Made solid progress on my project, great momentum!", number: 12, isImportant: true)

                }.frame(maxWidth: .infinity,maxHeight: .infinity)
            }
            
        
        
        
//        NavigationSplitView {
//            List {
//                ForEach(items) { item in
//                    NavigationLink {
//                        Text("Item at \(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))")
//                    } label: {
//                        Text(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))
//                    }
//                }
//                .onDelete(perform: deleteItems)
//            }
//            .toolbar {
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    EditButton()
//                }
//                ToolbarItem {
//                    Button(action: addItem) {
//                        Label("Add Item", systemImage: "plus")
//                    }
//                }
//            }
//        } detail: {
//            Text("Select an item")
//        }
    }

//    private func addItem() {
//        withAnimation {
//            let newItem = Item(timestamp: Date())
//            modelContext.insert(newItem)
//        }
//    }
//
//    private func deleteItems(offsets: IndexSet) {
//        withAnimation {
//            for index in offsets {
//                modelContext.delete(items[index])
//            }
//        }
//    }
}

//#Preview {
//    ContentView()
//        .modelContainer(for: Item.self, inMemory: true)
//}

/// Define or declare a structure
/// You create an instance of the structure using its name followed by parenthesis
/// Similiar to React and Components
struct Note: View {
    
    /// this order matters when passing arguments
    /// let means stored properties
    let date: String
    let text: String
    let number: Int
    let isImportant: Bool
    
    /// var is a computed property, var stands for varies (Accessor)
    var icon: some View{
        if isImportant{
            /// Adding styling to this Image turn the data type into some View
            return Image(systemName: "exclamationmark").foregroundStyle(.red).symbolEffect(.bounce.up.byLayer, options: .repeat(.periodic(delay: 10.0)))
        }else{
            /// Adding styling to this Image turn the data type into some View
            return Image(systemName: "checkmark").foregroundStyle(.green).symbolEffect(.bounce.up.byLayer, options: .repeat(.periodic(delay: 10.0)))
        }
    }
    //
    //
    var body: some View {
        VStack(spacing:0){
            Text(date)
                .padding([.top,.bottom],8)
                .padding([.leading,.trailing],12)
                .frame(maxWidth:.infinity,alignment: .leading)
                .background(Color.blue.opacity(0.5))
                .padding(0)
            ///putting padding before frame applies the padding to the inside of the frame not the outside
            Text(text)
                .padding([.top,.bottom],8)
                .padding([.leading,.trailing],12)
                .frame(maxWidth: .infinity, alignment: .leading) /// Make text flex to max width of container
                .background(Color.gray.opacity(0.2))
            HStack{
                /// String interpolation (putting string and int together)
                Text("Note Number: \(number)").font(.caption).fontWeight(.medium).foregroundStyle(Color.secondary)
                Spacer()
                Group{
                    Text("Important: ").font(.caption).fontWeight(.heavy)
                    icon ///Can use font styles on SF Symbols
                }
                
            }.frame(maxWidth: .infinity,alignment: .leading).padding(.top,8)
           
        }.frame(width: 300,height:100)
    }
}


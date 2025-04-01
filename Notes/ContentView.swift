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
        
        ZStack{
            ///auto stacks top to bottom
            HStack{
                Text("Notes App")
                ///Use SF Symbols system which provides a collection of icons
                Image(systemName: "list.bullet.clipboard").foregroundStyle(Color.blue)
            }.font(.largeTitle).frame(maxWidth:.infinity,maxHeight: .infinity,alignment: .top).padding(20)
            
            /// Stack vertically, auto centers text
            VStack{
                //Spacer()
                VStack(spacing:0){
                    Text("April 1 2025")
                        .padding([.top,.bottom],8)
                        .padding([.leading,.trailing],12)
                        .frame(maxWidth:.infinity,alignment: .leading)
                        .background(Color.blue.opacity(0.5))
                        .padding(0)
                    ///putting padding before frame applies the padding to the inside of the frame not the outside
                    Text("Today was a good day, I had fun playing soccer and coding a new project")
                        .padding([.top,.bottom],8)
                        .padding([.leading,.trailing],12)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.gray.opacity(0.2))
                }.frame(width: 300,height:300)
                
                //Spacer()
            }.frame(maxWidth: .infinity,maxHeight: .infinity)
           
        }.frame(maxWidth:.infinity, maxHeight: .infinity,alignment: .top)
        
        
        
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

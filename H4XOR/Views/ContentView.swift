//
//  ContentView.swift
//  H4XOR
//
//  Created by Tarek Hany on 9/26/20.
//  Copyright © 2020 Tarek Hany. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var newtworkManager = NetworkManager()
    var body: some View {
        NavigationView{
            
            List(newtworkManager.posts) { post in
                
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack{
                            Text(String(post.points))
                            Text(post.title)
                    }
                }
                
                
            }
            .navigationBarTitle("H4XOR News")
        }
        .onAppear {
            self.newtworkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


    //let posts = [
    //    Post(id: "1", title: "hello"),
    //    Post(id: "2", title: "Bonjour"),
    //    Post(id: "3", title: "Hola")
    //]

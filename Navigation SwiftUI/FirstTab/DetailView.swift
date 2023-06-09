//
//  DetailView.swift
//  Navigation SwiftUI
//
//  Created by YILMAZ ER on 20.05.2023.
//

import SwiftUI

struct DetailView: View {
    
    let text:String
    @Binding var path: NavigationPath
    
    var body: some View {
        VStack {
            Text("Detail view showing")
            Text(text)
            
            Divider()
            
            NavigationLink("Link to 3", value: 3)
            NavigationLink("Link to C", value: "CCC")
        }
        .navigationTitle(text)
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    path.removeLast()
                } label: {
                    Image(systemName: "chevron.left.circle")
                }

            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(text: "CCC", path: .constant(NavigationPath()))
    }
}

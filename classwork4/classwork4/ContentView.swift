//
//  ContentView.swift
//  classwork4
//
//  Created by Manal H R Alajmi  on 12/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var Additem = ""
    @State var items = ["tomato","cucumber","watermelon","suger","rice","petroot"]
    var body: some View {
        VStack{
        
        //                Image("")
        List (items, id:\.self) {selectitem in
            HStack{
                Image(selectitem)
                    .resizable()
                    .frame(width: 70, height: 70)
                Text(selectitem)
            }
        }
        .padding()
        HStack{
            Button {
            items.append(Additem)
            } label: {
            Image(systemName: "plus")
        }
            
        
      
            
            Button { items.remove(at: 0)
                
            }
                    
            label: {
                
                Image(systemName: "minus")
                
                }
            TextField("Add what you want to buy", text: $Additem )
            
            
            
            Button { items.append(Additem)
                Text(items.randomElement() )
            }
        label: {
            Image(systemName: "questionmark.app.fill")
                .resizable()
                .frame(width: 40, height: 40)
            
            
        }
            }
            
            
            .padding()
            
        
        }
    }
    }





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

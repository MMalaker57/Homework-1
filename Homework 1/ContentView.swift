//
//  ContentView.swift
//  Homework 1
//
//  Created by Matthew Malaker on 1/24/22.
//

//If things are working correctly, this is the "bad" version as requested
//in line item 1 in the first homework. This comment is for reference when
//going across versions. There will probably not be any more in this
//version of the code going forward. That would imply quality


import SwiftUI
import Foundation

struct ContentView: View {
    

    @State var radius = 1.0
    @State var sphereVolume = 1.0
    @State var sphereVolumeString = ""
    @State var sphereAreaString = ""
    @State var cubeAreaString = ""
    @State var cubeVolumeString = ""
       

    var body: some View {
        VStack{
            
            VStack{
                
                Button("Calculate", action: {sphereVolumeString = String((4.0/3.0)*Double.pi*pow(radius,3)); sphereAreaString=String(4*Double.pi*pow(radius,2)); cubeAreaString=String(6*pow(radius*2,2)); cubeVolumeString=String(pow(2*radius,3))})
                    .padding(.bottom)
                    .padding()
                HStack{
                    Text("Sphere Radius:")
                    Text(String(radius))
                        }
            
            HStack{
                Text("Sphere Volume")
                    .frame(width: 100)
                    .padding(.top, 0)
                    .padding(.bottom, 30)
                TextField("SVOutput", text: $sphereVolumeString)//, onCommit: {Task.init {await self.calculateCircle()}}//                .padding(.horizontal)
                .frame(width: 100)
                .padding(.top, 0)
                .padding(.bottom, 30)
                }
                
            HStack{
                Text("Sphere Surface Area")
                    .frame(width: 100)
                    .padding(.top, 0)
                    .padding(.bottom, 30)
                TextField("SSAOutput", text: $sphereAreaString)
                .frame(width: 100)
                .padding(.top, 0)
                .padding(.bottom, 30)
                }
            HStack{
                Text("Cube Volume")
                    .frame(width: 100)
                    .padding(.top, 0)
                    .padding(.bottom, 30)
                TextField("CVOutput", text: $cubeVolumeString)
                .frame(width: 100)
                .padding(.top, 0)
                .padding(.bottom, 30)
                }
            HStack{
                Text("Cube Surface Area")
                    .frame(width: 100)
                    .padding(.top, 0)
                    .padding(.bottom, 30)
                TextField("CSAOutput", text: $cubeAreaString)
                .frame(width: 100)
                .padding(.top, 0)
                .padding(.bottom, 30)
                }

                
            }
        }}}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  Homework 1
//
//  Created by Matthew Malaker on 1/24/22.
//

//If things are working correctly, this is the "not as bad" version as
//requested inline item 1 in the first homework. This comment is for
//reference whengoing across versions. The hallmarks of this version are the
//presence of comments and the addition of user input. The code was not
//rewritten to use classes --that si the third line item-- but the addition
//of user input requires that the input be sanitized, otherwise someone
//might try to calculate the volume of Homer's Odyssey and crash the software


import SwiftUI
import Foundation

struct ContentView: View {
    
    //Declare Variables. All outputs are stored as strings
    //I could not get the Text function to work by passing a double and
    //using the String(double) function
    @State var radius = 1.0 //Temporary value for startup and unit test
    @State var radiusString = ""
    @State var sphereVolumeString = ""
    @State var sphereAreaString = ""
    @State var cubeAreaString = ""
    @State var cubeVolumeString = ""
       

    var body: some View {
            VStack{
                    //User input sanitized using the Double optional set to
                    //zero with an absolute value taken to remove negatives
                    TextField("Enter Radius", text: $radiusString, onCommit: {radius=abs(Double(radiusString) ?? 0)})
                    .padding(.horizontal)
                    .frame(width: 100)
                    .padding(.top, 30)
                    .padding(.bottom, 0)
                
                //Button for calculation separate from input commit
                //Calculates both volumes and surface areas and stores
                //them to their respective	 values
                Button("Calculate", action: {sphereVolumeString = String((4.0/3.0)*Double.pi*pow(radius,3)); sphereAreaString=String(4*Double.pi*pow(radius,2)); cubeAreaString=String(6*pow(radius*2,2)); cubeVolumeString=String(pow(2*radius,3))})
                    .padding(.bottom)
                    .padding()
                
                    Text("Sphere Radius:")
                    Text(String(radius))
                
            //Sphere Volume Stack. Outputs calculated sphere volume
            //HStacks are used for formatting
            HStack{
                Text("Sphere Volume")
                    .frame(width: 100)
                    .padding(.top, 0)
                    .padding(.bottom, 30)
                TextField("SVOutput", text: $sphereVolumeString)//, onCommit: {Task.init {await self.calculateCircle()}}//                .padding(.horizontal)
                .frame(width: 180)
                .padding(.top, 0)
                .padding(.bottom, 30)
                }
            //Sphere Surface Area Stack. Outputs calculated sphere SA
            HStack{
                Text("Sphere Surface Area")
                    .frame(width: 100)
                    .padding(.top, 0)
                    .padding(.bottom, 30)
                TextField("SSAOutput", text: $sphereAreaString)
                .frame(width: 180)
                .padding(.top, 0)
                .padding(.bottom, 30)
                }
                
            //Sphere Volume Stack. Outputs calculated cube volume
            HStack{
                Text("Cube Volume")
                    .frame(width: 100)
                    .padding(.top, 0)
                    .padding(.bottom, 30)
                TextField("CVOutput", text: $cubeVolumeString)
                .frame(width: 180)
                .padding(.top, 0)
                .padding(.bottom, 30)
                }
            //Cube Surface Area Stack. Outputs calculate cube SA
            HStack{
                Text("Cube Surface Area")
                    .frame(width: 100)
                    .padding(.top, 0)
                    .padding(.bottom, 30)
                TextField("CSAOutput", text: $cubeAreaString)
                .frame(width: 180)
                .padding(.top, 0)
                .padding(.bottom, 30)
                }

                
            }
        }}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

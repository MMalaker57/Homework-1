//
//  ContentView.swift
//  Homework 1
//
//  Created by Matthew Malaker on 1/24/22.
//

//If things are working correctly, this is the "good" version as
//requested in line item 3 in the first homework.
//This version has additional comments when compared to the second, particularly in the documentation of the
//functions in the Sphere and Bouding Box classes, which were created to allow for code reuse.
//A nice consequence of abstracting code into classes is that the implimentation of said code becomes much
//easier to read and understand (at least if the classes are named properly)
//The calculateAll function was also added, which allowed the calculation of each value to be easily ported to
//the commit of the radius value. This also makes the "calculate" button unnecessary.


import SwiftUI
import Foundation

struct ContentView: View {
    
    //Declare Variables. All outputs are stored as strings
    //I could not get the Text function to work by passing a double and
    //using the String(double) function
    @ObservedObject private var sphere = Sphere()
    @ObservedObject private var cube = Bounding_Box()
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
                HStack{
                Text("Enter Radius")
                    .padding(.horizontal)
                    .frame(width: 150)
                    .padding(.top, 30)
                    .padding(.bottom, 0)
                TextField("", text: $radiusString, onCommit: {radius=abs(Double(radiusString) ?? 0);self.calculateAll(radius: radius)})
                    .padding(.horizontal)
                    .frame(width: 100)
                    .padding(.top, 30)
                    .padding(.bottom, 0)
                }
                //Button for calculation separate from input commit
                //Calculates both volumes and surface areas and stores
                //them to their respective	 values

                HStack{
                    VStack{
                    Text("Sphere Radius:")
                    Text(String(radius))
                    }
                    VStack{
                    Text("Box Side Length:")
                    Text(String(2*radius))
                    }
                }
            //Sphere Volume Stack. Outputs calculated sphere volume
            //HStacks are used for formatting
            HStack{
                Text("Sphere Volume")
                    .frame(width: 150)
                    .padding(.top, 0)
                    .padding(.bottom, 30)
                TextField("", text: $sphereVolumeString)//, onCommit: {Task.init {await self.calculateCircle()}}//                .padding(.horizontal)
                .frame(width: 180)
                .padding(.top, 0)
                .padding(.bottom, 30)
                }
            //Sphere Surface Area Stack. Outputs calculated sphere SA
            HStack{
                Text("Sphere Surface Area")
                    .frame(width: 150)
                    .padding(.top, 0)
                    .padding(.bottom, 30)
                TextField("", text: $sphereAreaString)
                .frame(width: 180)
                .padding(.top, 0)
                .padding(.bottom, 30)
                }
                
            //Sphere Volume Stack. Outputs calculated cube volume
            HStack{
                Text("Cube Volume")
                    .frame(width: 150)
                    .padding(.top, 0)
                    .padding(.bottom, 30)
                TextField("", text: $cubeVolumeString)
                .frame(width: 180)
                .padding(.top, 0)
                .padding(.bottom, 30)
                }
            //Cube Surface Area Stack. Outputs calculate cube SA
            HStack{
                Text("Cube Surface Area")
                    .frame(width: 150)
                    .padding(.top, 0)
                    .padding(.bottom, 30)
                TextField("", text: $cubeAreaString)
                .frame(width: 180)
                .padding(.top, 0)
                .padding(.bottom, 30)
                }
                //Calculate Button
                Button("Calculate", action: {self.calculateAll(radius: radius)})
                    .padding(.bottom)
                    .padding()
                
            }
        }
    
    func calculateAll(radius: Double){
        sphereAreaString = String(sphere.sphereSurfaceArea(radius: radius))
        sphereVolumeString = String(sphere.sphereVolume(radius: radius))
        cubeAreaString = String(cube.cuboidSurfaceArea(numberOfSides: 3, sideOneDimension: 2*radius, sideTwoDimension: 2*radius, sideThreeDimension: 2*radius))
        cubeVolumeString = String(cube.cuboidVolume(numberOfSides: 3, sideOneDimension: 2*radius, sideTwoDimension: 2*radius, sideThreeDimension: 2*radius))
    }
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

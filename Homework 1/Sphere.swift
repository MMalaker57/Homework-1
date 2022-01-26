//
//  Sphere.swift
//  Homework 1
//
//  Created by Matthew Malaker on 1/26/22.
//

import Foundation
import SwiftUI

//This class contains functions for calculating the surface area and volume of a 3D sphere
//Each function takes a single argument, which is the radius as a Double
class Sphere: NSObject, ObservableObject{
    
    ///Calculate the volume of a perfect sphere
    /// - Parameters:
    ///  - radiusOfSphere (Double)
    /// - Returns:
    ///   - volumeOfSphere (Double)
    ///
    func sphereVolume(radius: Double) -> Double{
        
        return (pow(abs(radius),3)*(4.0/3.0)*Double.pi)
    
    }
    
    
    
    
    ///Calculate the surface area of a perfect sphere
    /// - Parameters:
    ///  - radiusOfSphere (Double)
    /// - Returns:
    ///   - surfaceAreaOfSphere (Double)
    ///
    func sphereSurfaceArea(radius: Double) -> Double{
        
        return (pow(radius,2)*(4.0)*Double.pi)
    
    }
    
    
    
}


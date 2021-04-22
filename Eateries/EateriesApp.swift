//
//  EateriesApp.swift
//  Eateries
//
//  Created by Kieran Murphy on 21/4/21.
//



import SwiftUI

@main
struct EateriesApp: App {
    static var model: [Eatery] = {
        guard let data = try? Data(contentsOf: EateriesApp.fileURL),
              let model = try? JSONDecoder().decode([Eatery].self, from: data) else {
        return [cottonCandy, cupcake, donut, macaroon, popsicle, rainbowCake]
        }
        return model
    }()

    var body: some Scene {
        WindowGroup {
            ContentView(eateries: Binding(get: {
                EateriesApp.model
            }, set: { newValue in
                EateriesApp.model = newValue
            }))
        }
    }
    
    static var fileURL: URL {
        let fileName = "persons.json"
        let fm = FileManager.default
        guard let documentDir = fm.urls(for: .documentDirectory, in:
                                            .userDomainMask).first else { return URL(fileURLWithPath: "/") }
        let fileURL = documentDir.appendingPathComponent(fileName)
        return fileURL
    }
    
    
    static func save() {
        do {
            let data = try JSONEncoder().encode(model)
            
            try data.write(to: fileURL, options: .atomic)
            guard let dataString = String(data: data, encoding: .utf8) else {
                return
            }
            print(dataString)
        } catch {
            print(error)
        }
        
    }
}

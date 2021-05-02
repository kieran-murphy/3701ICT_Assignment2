//
//  EateriesApp.swift
//  Eateries
//
//  Created by Kieran Murphy on 21/4/21.
//



import SwiftUI

@main
struct EateriesApp: App {
    @State var model: [Eatery] = EateriesApp.model
    static var model: [Eatery] = {
        guard let data = try? Data(contentsOf: EateriesApp.fileURL),
              let model = try? JSONDecoder().decode([Eatery].self, from: data) else {
        return [elCaminoCantina, theFineDine, nightBites, theRiverRodeo, theCozyKitchen, theElegantEatery]
        }
        return model
    }()
    static var modelBinding: Binding<[Eatery]>?

    var body: some Scene {
        EateriesApp.modelBinding = $model
        return WindowGroup {
            ContentView(eateries: $model)
        }
    }
    
    static var fileURL: URL {
        let fileName = "persons.json"
        let fm = FileManager.default
        guard let documentDir = fm.urls(for: .documentDirectory, in:
                                            .userDomainMask).first else { return URL(fileURLWithPath: "/") }
        let fileURL = documentDir.appendingPathComponent(fileName)
        print(fileURL)
        return fileURL
    }

    
    static func save() {
        do {
            let data = try JSONEncoder().encode(modelBinding?.wrappedValue ?? model)
            
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

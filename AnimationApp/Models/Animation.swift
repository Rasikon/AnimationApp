//
//  Animation.swift
//  AnimationApp
//
//  Created by Rasikon on 18.09.2020.
//

struct Animation {
    let name: String
    let curve: String
    let force: Float
    let delay: Float
    let duration: Float
    var description: String {
        "animation: \(name)\n" +
            "curve: \(curve)\n" +
            String (format: "force =  %.1f\n", Double(force)) +
            String (format: "delay =  %.1f\n", Double(delay)) +
            String (format: "duration =  %.1f\n", Double(duration))
    }
}

extension Animation {
    static func getAnimation() -> Animation {
        let index = Int.random(in: 0..<DataManager.shared.names.count)
        let force = Float.random(in: 1...5)
        let delay = Float.random(in: 0...5)
        let duration = Float.random(in: 0.5...5)
        return Animation(name: DataManager.shared.names[index],
                         curve: DataManager.shared.curves[index],
                         force: force, delay: delay, duration: duration)
    }
}

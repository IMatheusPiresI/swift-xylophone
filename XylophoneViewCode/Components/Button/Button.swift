//
//  Button.swift
//  XylophoneViewCode
//
//  Created by Matheus Sousa on 28/06/23.
//

import UIKit
import AVFoundation

class Button: UIButton {
    
    private var title: String
    private var player: AVAudioPlayer!
    
    init(title: String, backgroundColor: UIColor){
        self.title = title
        super.init(frame: .zero)

        self.setTitle(title, for: .normal)
        self.setTitleColor(.white, for: .normal)
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = 10
    
        addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("Erro on Button Component")
    }
    
    @objc func buttonPressed(){
        let url = Bundle.main.url(forResource: title, withExtension: "wav")
        player =  try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

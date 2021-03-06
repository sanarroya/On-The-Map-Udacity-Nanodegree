//
//  GCDBlackBox.swift
//  On the Map
//
//  Created by Santiago Avila Arroyave on 1/3/17.
//  Copyright © 2017 Santiago Avila Arroyave. All rights reserved.
//

import Foundation

func updateUI(_ updates: @escaping () -> Void) {
    DispatchQueue.main.async {
        updates()
    }
}

func dispatchOnBackground(_ tasks: @escaping () -> Void) {
    DispatchQueue.global(qos: .userInitiated).async {
        tasks()
    }
}

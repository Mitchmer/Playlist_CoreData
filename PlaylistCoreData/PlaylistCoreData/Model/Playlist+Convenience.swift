//
//  Playlist+Convenience.swift
//  PlaylistCoreData
//
//  Created by Mitch Merrell on 8/7/19.
//  Copyright © 2019 Mitch Merrell. All rights reserved.
//

import Foundation
import CoreData

extension Playlist {
    
    convenience init(playlistName: String, song: [Song] = [], moc: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: moc)
        self.playlistName = playlistName
    }
    
}

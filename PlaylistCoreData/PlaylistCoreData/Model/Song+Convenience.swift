//
//  Song+Convenience.swift
//  PlaylistCoreData
//
//  Created by Mitch Merrell on 8/7/19.
//  Copyright © 2019 Mitch Merrell. All rights reserved.
//

import Foundation
import CoreData

extension Song {
    
    @discardableResult // IDK WHY, BUT KARL SAID TO 4Head
    convenience init(trackName: String, artist: String, playlist: Playlist, moc: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: moc)
        self.trackName = trackName
        self.artist = artist
        self.playlist = playlist
    }
}

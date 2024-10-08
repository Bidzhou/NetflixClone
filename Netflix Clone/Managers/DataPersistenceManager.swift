//
//  DataPersistenceManager.swift
//  Netflix Clone
//
//  Created by Frederico del' Bidzho on 18.09.2024.
//

import Foundation
import UIKit
import CoreData

class DataPersistenceManager {
    static let shared = DataPersistenceManager()
    
    enum DatabaseErors: Error{
        case failedToSaveData
        case failedToFetchData
        case failedToDeleteData
    }
    
    func downloadTitleWith (model: Title, completion: @escaping (Result<Void, Error>) -> Void){
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let context = appDelegate.persistentContainer.viewContext
        let item = TitleItem(context: context)
        item.original_title = model.original_title
        item.id = Int64(model.id)
        item.media_type = model.media_type
        item.overview = model.overview
        item.poster_path = model.poster_path
        item.release_date = model.release_date
        item.vote_average = model.vote_average
        item.vote_count = Int64(model.vote_count)
        
        do {
            try context.save()
            completion(.success(()))
        } catch {
            completion(.failure(DatabaseErors.failedToSaveData))
        }
        
    }
    
    func fetchingTitlesFromDatabase(completion: @escaping (Result<[TitleItem], Error>) -> Void){
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let context = appDelegate.persistentContainer.viewContext
        let request: NSFetchRequest<TitleItem>
        request = TitleItem.fetchRequest()
        
        do {
            let titles = try context.fetch(request)
            completion(.success(titles))
            
        }catch {
            completion(.failure(DatabaseErors.failedToFetchData))
        }
    }
    
    func deleteTitleWithModel(model: TitleItem, completion: @escaping (Result<Void, Error>) -> ()) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let context = appDelegate.persistentContainer.viewContext
        context.delete(model) // asking the database manager to delete certain object
        do{
            try context.save()
            completion(.success(()))
        } catch {
            completion(.failure(DatabaseErors.failedToDeleteData))
        }
        
    }
    
    
}

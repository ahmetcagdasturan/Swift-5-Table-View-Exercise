//
//  ViewController.swift
//  TableViewAppWithOOP
//
//  Created by ahmetcagdasturan on 6.07.2019.
//  Copyright © 2019 ahmetcagdasturan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // Table view definition
    @IBOutlet weak var MyTableView: UITableView!
    
    //Other definitions
    var animalArray = [Animal]()
    var outgoingValue = Animal()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = animalArray[indexPath.row].name
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MyTableView.dataSource = self
        MyTableView.delegate = self
        
        let dog = Animal()
        dog.name = "dog"
        dog.image = UIImage(named: "dog.jpg")!
        dog.description = "Dogs are small and very cute animals. They love play a game. Also dogs are very smart and funny."
        
        let cat = Animal()
        cat.name = "cat"
        cat.description = "Cats are small and cute animals. Generally cats love drink milk and eat meat."
        cat.image = UIImage(named: "cat.jpg")!
        
        let horse = Animal()
        horse.name = "horse"
        horse.image = UIImage(named: "horse.jpg")!
        horse.description = "Horses are very fast,big and cute animals. They are very smart and obedient"
        
        let bird = Animal()
        bird.name = "bird"
        bird.description = "Birds are sympathetic animals. They generally fly. Chickens are bird but they can not fly."
        bird.image = UIImage(named: "bird.jpg")!
        
        let mouse = Animal()
        mouse.name = "mouse"
        mouse.image = UIImage(named: "mouse.jpg")!
        mouse.description = "Mouses are mammal. They are so cute animals. They are too small and funny."
        
        animalArray.append(dog)
        animalArray.append(cat)
        animalArray.append(horse)
        animalArray.append(bird)
        animalArray.append(mouse)

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondPage"{
            var targetViewController = segue.destination as! DescriptionViewController
            targetViewController.incomingValue = outgoingValue
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        outgoingValue = animalArray[indexPath.row]
        performSegue(withIdentifier: "goToSecondPage", sender: nil)
    }
    


}


//
//  ViewController.swift
//  NavigationApp
//
//  Created by Apple M1 on 26.02.2023.
//

import UIKit

class ViewController: UIViewController {

    // Cсылка на сториборд, где размещен данный ViewController
    let storyBoardInstance = UIStoryboard(name: "Main", bundle: nil)
    
    // перейти к зеленой сцене
    @IBAction func toGreenScene(_ sender: UIButton) {
        // получаем ссылку на следующий контроллер, в данном случае следующий - это зеленый
        let nextViewController = storyBoardInstance.instantiateViewController(withIdentifier: "greenViewController")
        // обращаемся к Navigation Controller и вызываем метод перехода к новому контроллеру
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
    // перейти к желтой сцене
    @IBAction func toYellowScene(_ sender: UIButton) {
        let nextViewController = storyBoardInstance.instantiateViewController(withIdentifier: "yellowViewController")
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
    // перейти к корневой сцене
    @IBAction func toRootScene(_ sender: UIButton) {
        // обращаемся к Navigation Controller и вызываем метод перехода к корневому контроллеру
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    // перейти к предыдущему экрану
    @IBAction func toPreviousScene(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.prompt = "Подсказка"
        self.navigationItem.title = "Заголовок сцены"
        self.navigationItem.backButtonTitle = "Назад"
    }
    
    /*func findControllersInStack() {
        // Возврат к определенной сцене
        // перебираем все элементы стека
        self.navigationController?.viewControllers.forEach { viewController in
            // определяем требуемый контроллер
            // SomeViewController - это класс, соответствующий искомому контроллеру
            if viewController is SomeViewController {
                // производим возврат к нему
                self.navigationController?.popToViewController(viewController, animated: true)
            }
        }
        
        // Работа с корневой сценой
        // изменяем корневую сцену
        self.navigationController?.viewControllers[0] = someViewController
    }*/

}


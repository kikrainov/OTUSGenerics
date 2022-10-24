import UIKit
import Foundation

/*
 
 Реализуйте дженерик-класс для структуры данных Stack, Deque или Queue.
 Класс должен содержать дженерик-методы согласно выбранному типу структуры данных.
 В Playground основном пространстве напишите пример с использованием созданного класса
 https://ru.wikipedia.org/wiki/Двухсторонняя_очередь
 https://ru.wikipedia.org/wiki/Стек
 https://ru.wikipedia.org/wiki/Очередь_(программирование)

 Критерии оценки:
 Факт сдачи - 40 баллов
 Реализация класса выбранного типа - 30 баллов
 Пример с использованием - 20 баллов

 
 */


class Node<T> {
    let value: T
    var nextNode: Node?
    init(value: T) {
        self.value = value
    }
}

class Stack<T> {
    var top: Node<T>?
    
    func push(_ value: T) {
        let previousTop = top
        top = Node(value: value)
        top?.nextNode = previousTop
    }
    
    func pop() -> T? {
        let currentTop = top
        top = top?.nextNode
        return currentTop?.value
    }
    
    func peek() -> T? {
        return top?.value
    }
}

struct User {
    let name: String
    let username: String
}

let user1 = User(name: "Ivan", username: "nickname")
let user2 = User(name: "Petr", username: "nickname3")

let users = Stack<User>()

users.push(user1)
users.push(user2)

let firstUserPop = users.pop()
print(firstUserPop?.name ?? "N/A")

let stack = Stack<Int>()
stack.push(1)
stack.push(2)
stack.push(3)

stack.peek()

let firstPop = stack.pop()
stack.peek()
let secondPop = stack.pop()
let thirdPop = stack.pop()
let finalPop = stack.pop()

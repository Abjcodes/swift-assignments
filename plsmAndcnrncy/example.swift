// Parallelism

// Task 1
let thread1 = Thread {
    print("Task 1 started")
    sleep(2)  // Sleep for 2 seconds
    print("Task 1 finished")
}
thread1.start()

// Task 2
let thread2 = Thread {
    print("Task 2 started")
    sleep(1)  // Sleep for 1 second
    print("Task 2 finished")
}
thread2.start()

// Wait for both tasks to finish
thread1.join()
thread2.join()

print("Both tasks completed")

//Concurrency

// Create a serial queue
let queue = OperationQueue()

// Task A
queue.addOperation {
    print("Task A started")
    sleep(2)  // Sleep for 2 seconds
    print("Task A finished")
}

// Task B
queue.addOperation {
    print("Task B started")
    sleep(1)  // Sleep for 1 second
    print("Task B finished")
}

// Wait for tasks to complete
queue.waitUntilAllOperationsAreFinished()

print("Both tasks completed")

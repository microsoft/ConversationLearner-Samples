import * as Cl from '@conversationlearner/sdk'
import * as request from 'request-promise'

type Todo = {
    userId: number,
    id: number,
    title: string,
    completed: string,
}

const logic: Cl.LogicCallback<string> = async () => {
    const options = { method: 'GET', uri: 'https://jsonplaceholder.typicode.com/todos/1', json: true }
    const todo: Todo = await request(options)
    return todo.title
}

const render: Cl.RenderCallback<string> = async result => `Title of first todo is: ${result}`

export const query: Cl.ICallbackInput<string> = {
    name: "Query",
    logic,
    render,
}
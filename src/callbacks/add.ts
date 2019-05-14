import * as Cl from '@conversationlearner/sdk'

const logic: Cl.LogicCallback<number> = async (memoryManager, arg1: string, arg2: string) => {
    return [arg1, arg2]
        .map(x => parseInt(x))
        .reduce((sum, a) => sum += a, 0)
}

const render: Cl.RenderCallback<number> = async result => `Add result is: ${result}`

export const add: Cl.ICallbackInput<number> = {
    name: "Add",
    logic,
    render,
}
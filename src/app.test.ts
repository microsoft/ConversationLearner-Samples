import * as supertest from 'supertest'
import * as execa from 'execa'

// This is kind of hack. We're looking for something we know is output from the server on startup
// TODO: Refactor to separate bot logic from server startup. Then we can give the servers to `supertest` directly to manage
function startServer(): Promise<execa.ExecaChildProcess> {
    const serverProcess = execa('node', ['.'], { detached: true })
    const readable = serverProcess.stdout

    let resolver: any = null
    const promise = new Promise<execa.ExecaChildProcess>((resolve, reject) => resolver = resolve)

    readable.on('data', (chunk) => {
        console.log(`Received ${chunk.length} bytes of data. \n${chunk}`)
        if ((chunk as string).includes('serviceUrl')) {
            console.log(`Found serviceUrl`)
            resolver(serverProcess)
        }
    })

    return promise
}

describe('Test bot', () => {
    let serverProcess: execa.ExecaChildProcess | null = null
    let botServer: supertest.SuperTest<supertest.Test> = null!
    let sdkServer: supertest.SuperTest<supertest.Test> = null!
    beforeAll(async () => {
        // Start the server
        botServer = supertest('http://localhost:3978')
        sdkServer = supertest('http://localhost:5000')
        console.log('server started')
    })

    test('Bot server is running', async () => {
        const response = await botServer.get('/')
        expect(response.status).toBe(404)
    })

    test('SDK server is running', async () => {
        const response = await sdkServer.get('/')
        expect(response.status).toBe(404)
    })

    afterAll(() => {
        // Kill the server
        serverProcess && serverProcess.kill()
        console.log(`server killed`)
    })
})

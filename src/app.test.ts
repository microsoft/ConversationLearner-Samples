import * as supertest from 'supertest'
import app from './app'

describe('Test bot server', () => {
    let botServer: supertest.SuperTest<supertest.Test> = null!

    beforeAll(() => {
        botServer = supertest(app)
    })

    it('given request to known (sdk) route should return 200', async () => {
        const response = await botServer.get('/sdk')
        expect(response.status).toBe(200)
    })

    it('given request to known (ui) route should return 200', async () => {
        const response = await botServer.get('/ui/home')
        expect(response.status).toBe(200)
    })

    it('given request to unknown route should return 404', async () => {
        const response = await botServer.get('/unknown')
        expect(response.status).toBe(404)
    })
})

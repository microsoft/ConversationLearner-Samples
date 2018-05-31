import * as supertest from 'supertest'
import app from './app'

describe('Test bot server', () => {
    let botServer: supertest.SuperTest<supertest.Test> = null!

    beforeAll(() => {
        botServer = supertest(app)
    })

    it('given request to unknown route should return 404', async (done) => {
        const response = await botServer.get('/')
        expect(response.status).toBe(404)
        done()
    })
})

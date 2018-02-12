import * as execa from 'execa'

console.log(`Verify package-lock.json is not modified after npm install`)

async function main() {
    const output = await execa.stdout('git', ['status', '--untracked-files=no', '--porcelain'])

    const lines = output.split(/\n/)
    console.log(`lines: `, lines)

    const isPackageLockModified = lines.some(line => /package-lock.json/g.test(line))

    if (isPackageLockModified) {
        console.error(`package-lock.json is modified after install please ensure to run npm install locally and commit the package-lock.json`)
        process.exit(1)
    }
}

main()
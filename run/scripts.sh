#!/usr/bin/env bash

./node_modules/typescript/bin/tsc --outDir "./dist" --target ES5 --lib DOM,ES6,ScriptHost --noImplicitAny \
--module commonjs --moduleResolution classic --jsx react --allowSyntheticDefaultImports \
--declaration --declarationDir "./typescript" \
./src/history.ts

./node_modules/typescript/bin/tsc --outFile "./dist/amd/index.min.js" --target ES5 --lib DOM,ES6,ScriptHost --noImplicitAny \
--module amd --moduleResolution classic --jsx react --allowSyntheticDefaultImports \
./src/history.ts

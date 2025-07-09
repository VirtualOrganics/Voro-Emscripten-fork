import voro from '../../bin/voro_raw.js';

// Emscripten modules are loaded asynchronously. We need to wait for it
// to be initialized before we can use it.
voro().then((Module) => {
    console.log("Voro++ WASM module initialized.");

    // The rest of the original binding_test.js code goes here...
    const particles = [];
    for (let i = 0; i < 10; i++) {
        particles.push(
            Math.random(),
            Math.random(),
            Math.random()
        );
    }
    
    const container = new Module.Container(0, 1, 0, 1, 0, 1, 1, 1, 1, true, true, true, 8);
    const cells = container.computeCells(particles);

    console.log("Computed Voronoi cells:", cells);

    container.delete();
});

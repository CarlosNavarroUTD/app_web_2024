function operacion() {
    let n1 = parseFloat(document.getElementById("n1").value);
    let n2 = parseFloat(document.getElementById("n2").value);
    let tipoope = document.getElementById("tipo").value;
    let ope;

    if (isNumber(n1) && isNumber(n2)) {
        switch (tipoope) {
            case "+": ope = n1 + n2; break;
            case "-": ope = n1 - n2; break;
            case "*": ope = n1 * n2;break;
            case "/": ope = n2 !== 0 ? n1 / n2 : "Error: División por cero"; break;
        }

        let resul = document.getElementById("resultado");
        resul.innerHTML = `<h2>${n1} ${tipoope} ${n2} = ${ope}</h2>`;
    } else {
        document.getElementById("resultado").innerHTML = "<h2>Por favor, ingrese números válidos</h2>";
    }
}

function isNumber(n) {
    return !isNaN(parseFloat(n)) && isFinite(n);
}

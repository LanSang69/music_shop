const metodo = document.getElementById("id_metodo");
const efectivo = document.getElementById("pago-efectivo");
const tarjeta = document.getElementById("pago-tarjeta");

metodo.addEventListener('change', function(){
    if(metodo.value === 'none'){
        efectivo.style.display = 'none';
        tarjeta.style.display = 'none';
    }
    else if(metodo.value === 'efectivo'){
        efectivo.style.display = 'block';
        tarjeta.style.display = 'none';
        efectivo.scrollIntoView({ behavior: 'smooth' });
    }else{
            efectivo.style.display = 'none';
            tarjeta.style.display = 'block';
            tarjeta.scrollIntoView({ behavior: 'smooth' });
    }
});
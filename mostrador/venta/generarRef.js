 // Generar un número aleatorio ficticio de transferencia una vez
 const numero_referencia = Math.floor(Math.random() * 1000000) + 1;

 function startTransaction() {

     
     document.getElementById('startButton').style.display = 'none';
     document.getElementById('terminal').style.display = 'block';
     document.getElementById('message').innerHTML = 'Insertar tarjeta';
     document.getElementById('loadingCircle').style.display = 'none';
     document.getElementById('transferNumber').style.display = 'none';
     document.getElementById('terminal').classList.remove('completed');
     
     document.getElementById('terminal').addEventListener('click', function () {
         document.getElementById('message').innerHTML = 'Leyendo imagen...';
         document.getElementById('loadingCircle').style.display = 'block';

         localStorage.setItem('numeroTransferencia', numero_referencia.toString());
         console.log(localStorage.getItem('numeroTransferencia'));

     });
     
     // Simulamos el proceso de transacción con un retardo
     setTimeout(() => {
         document.getElementById('message').innerHTML = 'Transacción completada. Retire su tarjeta.';
         document.getElementById('loadingCircle').style.display = 'none';
         document.getElementById('terminal').classList.add('completed');

         // Mostrar el número de transferencia ficticio generado anteriormente
         document.getElementById('transferNumber').innerHTML = 'Número de referencia: ' + numero_referencia;
         document.getElementById('transferNumber').style.display = 'block';
     }, 4000); // 3000 milisegundos (3 segundos)
 }
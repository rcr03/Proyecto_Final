/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

$(document).ready(function (){
    $("tr #btnDelete").click(function (){
        var idp=$(this).parent().find("#idp").val();
        swal({
            title: "Esta seguro de Eliminar?",
            text: "Una vez eliminado, Ud. puede agregar de nuevo!",
            icon: "warning",
            buttons: true,
            dangerMode: true,
          })
          .then((willDelete) => {
            if (willDelete) {
              swal("Poof! Tu articulo ha sido eliminado!", {
                icon: "success",
              }).then((willDelete)=>{
                  if(willDelete){
                      parent.location.href="Controlador?accion=carrito";
                  }
              });
            } else {
              swal("Registro no eliminado!");
            }
          });
        eliminar(idp);
    });
    function eliminar(idp){
        var url="Controlador?accion=Delete";
        $.ajax({
            type: 'POST',
            url: url,
            data: "idp="+idp
        });
    }
    
    $("tr #Cantidad").click(function (){
        var idp = $(this).parent().find("#idpro").val();
        var cantidad = $(this).parent().find("#Cantidad").val();
        var url = "Controlador?accion=ActualizarCantidad";
        $.ajax({
            type: 'POST',
            url: url,
            data: "idp=" + idp + "&Cantidad=" + cantidad,
            success: function (data, textStatus, jqXHR){
                location.href="Controlador?accion=Carrito";
            }
        });
    });
});



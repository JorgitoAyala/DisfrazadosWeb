<%-- 
    Document   : Empleado
    Created on : 20 dic. 2022, 11:57:08
    Author     : Usuario
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
        <script src="https://cdn.tailwindcss.com"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="p-10 bg-gray-400 rounded-lg shadow">
            <button id="btnShow" class="mb-8 py-2 bg-orange-700 w-full text-white font-bold rounded cursor-pointer">
                Ver la tabla de empleados
            </button>
            <div id="addShow" class="p-10 border border-black rounded bg-gray-100">
                <form class="flex flex-col gap-8" action="Controlador?menu=Empleado" method="POST">
                    <p class="text-3xl text-center font-bold underline">
                        "Disfrazados" Employees MVC
                    </p>
                    <div class="grid grid-cols-2 gap-8">
                        <div class="flex flex-col gap-4">
                            <p class="text-lg font-semibold italic">
                                Datos del nuevo empleado:
                            </p>
                            <hr class="border bg-gray-700 border-gray-700 rounded"/>
                            <div>
                                <label class="mt-2 font-semibold">Dni</label>
                                <input type="text" value="${empleado.getDni()}" name="txtDni" class="px-3 py-1 w-full border rounded"/>
                            </div>
                            <div>
                                <label class="mt-2 font-semibold">Nombres</label>
                                <input type="text" value="${empleado.getNom()}" name="txtNombres" class="px-3 py-1 w-full border rounded"/>
                            </div>
                            <div>
                                <label class="mt-2 font-semibold">Telefono</label>
                                <input type="text" value="${empleado.getTel()}" name="txtTel" class="px-3 py-1 w-full border rounded"/>
                            </div>
                            <div>
                                <label class="mt-2 font-semibold">Estado</label>
                                <input type="text" value="${empleado.getEstado()}" name="txtEstado" class="px-3 py-1 w-full border rounded"/>
                            </div>
                            <div>
                                <label class="mt-2 font-semibold">Usuario</label>
                                <input type="text" value="${empleado.getUser()}" name="txtUser" class="px-3 py-1 w-full border rounded"/>
                            </div>
                        </div>
                        <div class="flex flex-col gap-4">
                            <p class="text-lg font-semibold italic">
                                Imagen del nuevo empleado:
                            </p>
                            <hr class="border bg-gray-700 border-gray-700 rounded"/>
                            <img class="rounded-lg" src="images/empleado.png" alt="producto"/>
                        </div>
                    </div>
                    <div class="flex gap-4">
                        <input type="submit" name="accion" value="Agregar" class="py-2 w-full bg-blue-800 text-white font-bold rounded cursor-pointer"/>
                        <input type="submit" name="accion" value="Actualizar" class="py-2 w-full bg-green-800 text-white font-bold rounded cursor-pointer"/>
                    </div>
                </form>
            </div>
            <div id="tableShow" class="hidden">
                <div class="overflow-x-auto relative shadow-md sm:rounded-lg">
                    <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
                        <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                            <tr>
                                <th scope="col" class="py-3 px-6">ID</th>
                                <th scope="col" class="py-3 px-6">DNI</th>
                                <th scope="col" class="py-3 px-6">NOMBRES</th>
                                <th scope="col" class="py-3 px-6">TELEFONO</th>
                                <th scope="col" class="py-3 px-6">ESTADO</th>
                                <th scope="col" class="py-3 px-6">USER</th>
                                <th scope="col" class="py-3 px-6">ACCIONES</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="em" items="${empleados}">
                                <tr class="bg-white border-b dark:bg-gray-900 dark:border-gray-700">
                                    <td scope="row" class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                        ${em.getId()}
                                    </td>
                                    <td class="py-4 px-6">${em.getDni()}</td>
                                    <td class="py-4 px-6">${em.getNom()}</td>
                                    <td class="py-4 px-6">${em.getTel()}</td>
                                    <td class="py-4 px-6">${em.getEstado()}</td>
                                    <td class="py-4 px-6">${em.getUser()}</td>
                                    <td class="py-4 px-6">
                                        <a href="Controlador?menu=Empleado&accion=Editar&id=${em.getId()}" class="text-yellow-400 font-bold">Editar</a>
                                        <a href="Controlador?menu=Empleado&accion=Delete&id=${em.getId()}" class="ml-2 text-red-700 font-bold">Eliminar</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
    
    <!--Script-->
    <script>
        const btnShow = document.getElementById("btnShow");
        const tableShow = document.getElementById("tableShow").classList;
        const addShow = document.getElementById("addShow").classList;
        
        let state = true;
        
        btnShow.addEventListener("click", () => {
            if(state){
                btnShow.innerText = "Agregar un nuevo empleado";
                btnShow.classList.replace("bg-orange-700", "bg-sky-800");
                tableShow.remove("hidden");
                addShow.add("hidden");
                state = false;
            } else {
                btnShow.innerText = "Ver tabla de empleados";
                btnShow.classList.replace("bg-sky-800", "bg-orange-700");
                tableShow.add("hidden");
                addShow.remove("hidden");
                state = true;
            }
        });
    </script>
</html>

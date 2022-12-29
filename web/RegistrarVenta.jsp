<%-- 
    Document   : RegistrarVenta
    Created on : 20 dic. 2022, 11:57:23
    Author     : Usuario
--%>

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
        <div class="p-10 bg-gray-400 flex flex-col gap-5 rounded-lg shadow">
            <div class="p-10 border border-black rounded bg-gray-100">
                <form class="flex flex-col gap-4" action="Controlador" method="POST">
                    <p class="text-3xl text-center font-bold underline">
                        MVC Módulo de Ventas de disfraces
                    </p>
                    <div class="flex flex-col gap-2">
                        <div class="flex items-center gap-2">
                            <i class="ri-group-2-fill"></i>
                            <p class="text-lg font-semibold italic">Datos del cliente:</p>
                        </div>
                        <hr class="border bg-gray-700 border-gray-700 rounded"/>
                        <div class="w-full flex gap-4">
                            <div class="w-1/2 relative">
                                <input type="text" value="" name="codigocliente" class="p-3 w-full border rounded" placeholder="Buscar usuario..."/>
                                <input type="submit" name="accion" value="Buscar" class="py-2 px-3 absolute right-1 top-1 bg-amber-200 hover:bg-amber-500 rounded-full" />
                            </div>
                            <div class="w-1/2 flex bg-amber-300 rounded">
                                <div class="p-3"><i class="ri-user-fill"></i></div>
                                <input type="text" value="usuario x" name="nombrescliente" class="p-3 w-full bg-gray-700 text-white font-bold rounded"/>
                            </div>
                        </div>
                    </div>
                    <div class="flex flex-col gap-2">
                        <div class="flex items-center gap-2">
                            <i class="ri-archive-fill"></i>
                            <p class="text-lg font-semibold italic">Datos del producto:</p>
                        </div>
                        <hr class="border bg-gray-700 border-gray-700 rounded"/>
                        <div class="w-full flex gap-4">
                            <div class="w-1/2 relative">
                                <input type="text" value="" name="codigocliente" class="p-3 w-full border rounded" placeholder="Buscar usuario..."/>
                                <input type="submit" name="accion" value="Buscar" class="py-2 px-3 absolute right-1 top-1 bg-lime-200 hover:bg-lime-500 rounded-full" />
                            </div>
                            <div class="w-1/2 flex bg-lime-300 rounded">
                                <div class="p-3"><i class="ri-gift-2-fill"></i></div>
                                <input type="text" value="producto x" name="nombresproducto" class="p-3 w-full bg-gray-700 text-white font-bold rounded"/>
                            </div>
                        </div>
                        <div class="w-full flex gap-4">
                            <div class="w-1/3 flex bg-lime-300 rounded">
                                <div class="p-3"><i class="ri-money-dollar-circle-fill"></i></div>
                                <input type="text" value="producto x" name="precio" class="p-3 w-full rounded"/>
                            </div>
                            <div class="w-1/3 flex bg-lime-300 rounded">
                                <div class="p-3"><i class="ri-funds-box-fill"></i></div>
                                <input type="number" value="producto x" name="cant" class="p-3 w-full rounded"/>
                            </div>
                            <div class="w-1/3 flex bg-lime-300 rounded">
                                <div class="p-3"><i class="ri-temp-hot-line"></i></div>
                                <input type="text" value="producto x" name="stock" class="p-3 w-full bg-gray-700 text-white font-bold rounded"/>
                            </div>
                        </div>
                    </div>
                    <div class="relative flex items-center gap-4">
                        <i class="absolute left-3 text-white ri-shopping-cart-2-fill"></i>
                        <input type="submit" name="accion" value="Agregar" class="py-2 pl-10 px-5 bg-blue-800 text-white font-bold rounded cursor-pointer"/>
                    </div>
                </form>
            </div>
            <div class="p-10 border border-black rounded bg-gray-100">
                <div class="pl-5 flex items-center gap-4 bg-gray-300 rounded">
                    <label class="w-1/3 font-semibold">Nro de serie:</label>
                    <input type="text" value="producto x" name="NroSerie" class="p-3 w-2/3 bg-gray-700 text-white font-bold rounded"/>
                </div>
                <div class="mt-4 overflow-x-auto relative shadow-md sm:rounded-lg">
                    <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
                        <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                            <tr>
                                <th scope="col" class="py-3 px-6">Nro</th>
                                <th scope="col" class="py-3 px-6">Codigo</th>
                                <th scope="col" class="py-3 px-6">Descripcion</th>
                                <th scope="col" class="py-3 px-6">Precio</th>
                                <th scope="col" class="py-3 px-6">Cantidad</th>
                                <th scope="col" class="py-3 px-6">Subtotal</th>
                                <th scope="col" class="py-3 px-6">acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="em" items="${empleados}">
                                <tr class="bg-white border-b dark:bg-gray-900 dark:border-gray-700">
                                    <td class="py-4 px-6">1</td>
                                    <td class="py-4 px-6">002</td>
                                    <td class="py-4 px-6">Disfraz Batman</td>
                                    <td class="py-4 px-6">$50</td>
                                    <td class="py-4 px-6">10</td>
                                    <td class="py-4 px-6">$500.00</td>
                                    <td class="py-4 px-6">
                                        <input type="text" name="accion" value="Generar Venta" class="px-3 bg-lime-300 text-black rounded-full cursor-pointer"/>
                                        <input type="text" name="accion" value="Cancelar" class="px-3 bg-red-300 text-black rounded-full cursor-pointer"/>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="mt-4 flex justify-between gap-4">
                    <div class="flex gap-4">
                        <div class="relative flex items-center gap-4">
                            <i class="absolute left-3 text-white ri-bear-smile-line"></i>
                            <input type="submit" name="accion" value="Generar Venta" class="py-2 pl-10 px-5 bg-green-800 text-white font-bold rounded cursor-pointer"/>
                        </div>
                        <div class="relative flex items-center gap-4">
                            <i class="absolute left-3 text-white ri-close-circle-line"></i>
                            <input type="submit" name="accion" value="Cancelar" class="py-2 pl-10 px-5 bg-red-800 text-white font-bold rounded cursor-pointer"/>
                        </div>
                    </div>
                    <div class="flex gap-4">
                        <div class="pl-5 flex items-center gap-4 bg-gray-300 rounded">
                            <label class="w-1/3 font-semibold">Total a Pagar:</label>
                            <input type="text" value="S/.500.00" name="txtDni" class="p-3 w-2/3 bg-gray-700 text-white font-bold rounded"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

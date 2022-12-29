<%-- 
    Document   : Principal
    Created on : 20 dic. 2022, 05:23:16
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
    <body class="bg-gray-600">
        <div>
            <nav class="bg-white px-2 sm:px-4 py-2.5 dark:bg-gray-900 fixed w-full z-20 top-0 left-0 border-b border-gray-200 dark:border-gray-600">
                <div class="container flex flex-wrap items-center justify-between mx-auto">
                    <div class="flex items-center">
                        <img src="images/logo-app.png" class="h-6 mr-3 sm:h-9 rounded" alt="logo"/>
                        <span class="self-center text-xl font-semibold whitespace-nowrap dark:text-white">
                            Disfrazados
                        </span>
                    </div>
                    <div class="flex md:order-2 gap-4">
                        <div class="relative">
                            <button id="dropdownInformationButton" data-dropdown-toggle="dropdownInformation" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2.5 text-center inline-flex items-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800" type="button">
                                Opciones <svg class="ml-2 w-4 h-4" aria-hidden="true" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path></svg>
                            </button>
                            <!-- Dropdown menu -->
                            <div id="dropdownInformation" class="hidden absolute -left-[88px] top-12 bg-white rounded divide-y divide-gray-100 shadow dark:bg-gray-700 dark:divide-gray-600">
                                <div class="py-3 px-5 flex items-center gap-2">
                                    <img class="w-6 h-6 rounded-full" src="https://img.freepik.com/vector-premium/icono-circulo-usuario-anonimo-ilustracion-vector-estilo-plano-sombra_520826-1931.jpg" alt="Jese image"/>
                                    <div class="text-sm text-gray-900 dark:text-white">
                                        <div>${usuario.getNom()}</div>
                                        <div class="font-medium truncate">usuario@gmail.com</div>
                                    </div>
                                </div>
                                <form class="py-1" action="Validar" method="POST">
                                  <button name="accion" value="Salir" class="block w-full py-2 px-4 text-sm text-gray-700 hover:bg-gray-100 dark:hover:bg-gray-600 dark:text-gray-200 dark:hover:text-white">
                                      Cerrar sesión
                                  </button>
                                </form>
                            </div>
                        </div>
                        <button id="openMenu" data-collapse-toggle="navbar-sticky" type="button" class="inline-flex items-center p-2 text-sm text-gray-500 rounded-lg md:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600" aria-controls="navbar-sticky" aria-expanded="false">
                            <span class="sr-only">Open main menu</span>
                            <svg class="w-6 h-6" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z" clip-rule="evenodd"></path></svg>
                        </button>
                    </div>
                    <div id="menuDisplay" class="items-center justify-between hidden w-full md:flex md:w-auto md:order-1" id="navbar-sticky">
                        <ul class="flex flex-col p-4 mt-4 border border-gray-100 rounded-lg bg-gray-50 md:flex-row md:space-x-8 md:mt-0 md:text-sm md:font-medium md:border-0 md:bg-white dark:bg-gray-800 md:dark:bg-gray-900 dark:border-gray-700">
                            <li>
                                <a href="Controlador?menu=Producto" target="myFrame" class="block py-2 pl-3 pr-4 text-gray-700 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 md:dark:hover:text-white dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700">
                                    Producto
                                </a>
                            </li>
                            <li>
                                <a href="Controlador?menu=Empleado&accion=Listar" target="myFrame" class="block py-2 pl-3 pr-4 text-gray-700 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 md:dark:hover:text-white dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700">
                                    Empleado
                                </a>
                            </li>
                            <li>
                                <a href="Controlador?menu=Cliente" target="myFrame" class="block py-2 pl-3 pr-4 text-gray-700 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 md:dark:hover:text-white dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700">
                                    Clientes
                                </a>
                            </li>
                            <li>
                                <a href="Controlador?menu=NuevaVenta" target="myFrame" class="block py-2 pl-3 pr-4 text-gray-700 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 md:dark:hover:text-white dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700">
                                    Nueva venta
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <div class="px-8 pt-24">
                <iframe name="myFrame" class="w-full h-[120vh]"></iframe>
            </div>
        </div>
    </body>
    
    <!--Script-->
    <script>
        const btnDropDown = document.getElementById("dropdownInformationButton");
        const btnOpenMenu = document.getElementById("openMenu");
        const infoDropDown = document.getElementById("dropdownInformation").classList;
        const menuDisplay = document.getElementById("menuDisplay").classList;
            
        btnDropDown.addEventListener("click", () => {
            infoDropDown.contains("hidden") ? infoDropDown.remove("hidden") : infoDropDown.add("hidden");
        });
        
        btnOpenMenu.addEventListener("click", () => {
            menuDisplay.contains("hidden") ? menuDisplay.remove("hidden") : menuDisplay.add("hidden");
        });
    </script>
</html>

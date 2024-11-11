
productos = ["laptop", "camara", "libro", "zapatos", "ropa"]
pesos = [3, 2, 1, 4, 5]  
valores = [1000, 500, 150, 800, 200]  

pedido_cliente = ["laptop", "camara", "zapatos", "telefono"]
capacidad_vehiculo = 100


def mochila(pesos, valores, capacidad):
    n = len(pesos)
    dp = [[0 for _ in range(capacidad + 1)] for _ in range(n + 1)]
    
    for i in range(1, n + 1):
        for w in range(1, capacidad + 1):
            if pesos[i-1] <= w:
                dp[i][w] = max(dp[i-1][w], valores[i-1] + dp[i-1][w - pesos[i-1]])
            else:
                dp[i][w] = dp[i-1][w]
    
    return dp[n][capacidad]

beneficio_maximo = mochila(pesos, valores, capacidad_vehiculo)
print("Beneficio maximo que puede cargar el vehiculo:", beneficio_maximo)



def lcs(pedido, inventario):
    m, n = len(pedido), len(inventario)
    dp = [[0] * (n + 1) for _ in range(m + 1)]
    
    for i in range(1, m + 1):
        for j in range(1, n + 1):
            if pedido[i-1] == inventario[j-1]:
                dp[i][j] = dp[i-1][j-1] + 1
            else:
                dp[i][j] = max(dp[i-1][j], dp[i][j-1])
    
    subsecuencia = []
    i, j = m, n
    while i > 0 and j > 0:
        if pedido[i-1] == inventario[j-1]:
            subsecuencia.append(pedido[i-1])
            i -= 1
            j -= 1
        elif dp[i-1][j] > dp[i][j-1]:
            i -= 1
        else:
            j -= 1
    
    subsecuencia.reverse()
    return subsecuencia


subsecuencia = lcs(pedido_cliente, productos)
print("Productos coincidentes en inventario y pedido:", subsecuencia)



import itertools

distancias = {
    'A': {'A': 0, 'B': 3, 'C': 9, 'D': 8},
    'B': {'A': 3, 'B': 0, 'C': 7, 'D': 5},
    'C': {'A': 9, 'B': 7, 'C': 0, 'D': 6},
    'D': {'A': 8, 'B': 5, 'C': 6, 'D': 0}
}

def ruta_mas_corta(puntos, distancias):
    mejor_ruta = None
    menor_distancia = float('inf')
    
    for ruta in itertools.permutations(puntos):
        distancia_total = 0
        for i in range(len(ruta) - 1):
            distancia_total += distancias[ruta[i]][ruta[i + 1]]
        distancia_total += distancias[ruta[-1]][ruta[0]]  
        if distancia_total < menor_distancia:
            menor_distancia = distancia_total
            mejor_ruta = ruta
    
    return mejor_ruta, menor_distancia

puntos = ['A', 'B', 'C', 'D']
mejor_ruta, menor_distancia = ruta_mas_corta(puntos, distancias)
print("Ruta mas corta:", mejor_ruta)
print("Distancia total de la ruta:", menor_distancia)

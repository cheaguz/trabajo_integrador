Historial=(2350, 5960, 23000, 1000, 8900)
gasto=0
for g in (2350, 5960, 23000, 1000, 8900):
  gasto=(g+gasto)
if gasto > 30000:
  print(f"Gastos por encima de lo presupuestado {gasto}")
else:
  print(f"El gasto efectuado es{gasto}")
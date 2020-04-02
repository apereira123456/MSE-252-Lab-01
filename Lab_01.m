X = [19.93 19.91 20.07 20.10 19.98 20.11 20.12 19.85 20.08 19.92];
Y = [19.96 19.84 19.83 19.82 19.79 19.76 19.91 19.84 19.80 19.85];
Z = [10.45 10.55 10.46 10.47 10.37 10.40 10.42 10.44 10.50 10.35 10.53 10.48 10.39 10.50 10.50];

X_avg = mean(X)
Y_avg = mean(Y)
Z_avg = mean(Z)

X_std = std(X,0)
Y_std = std(Y,0)
Z_std = std(Z,0)

V_pla = X_avg * Y_avg * Z_avg
V_cad = 20 * 20 * 10

S_pla = 100 * (V_pla - V_cad) / V_cad

Z_sort = sort(Z);
Z_norm = normalize(Z_sort);

y = 100 * normpdf(Z_norm,0,1);

plot(Z_sort,y)
title('Thickness Distribution Curve')
xlabel('Thickness (mm)')
ylabel('Probability')
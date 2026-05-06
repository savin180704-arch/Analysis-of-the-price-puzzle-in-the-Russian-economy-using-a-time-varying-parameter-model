data = readtable("filepath");

DLFM2 = diff(log(data.FM2));
DLIND = diff(log(data.IND));
PI = data.PI(2:end);
DFYFF = diff(data.FYFF);
DLEXRUSD = diff(log(data.EXRUSD));
DLURALS = diff(log(data.URALS));

% Эндогенные переменные (без DLURALS)
Y = [DLIND, PI, DLFM2, DLEXRUSD, DFYFF];

% Экзогенная переменная
X = DLURALS;

% Создание VAR модели (5 эндогенных переменных)
Mdl = varm(5, 2);

% Оценка VARX модели с экзогенной переменной
EstMdl = estimate(Mdl, Y, 'X', X);
%Чтобы долго не ждать, число итераций NumPaths можно снизить с 10000 до 500
[Response, Lower, Upper] = irf(EstMdl, NumObs=20, NumPaths=10000);
periods = 0:19;
figure;
% Для получения откликов промышленности в скобках справа от Response 2 везде нужно заменить на 1, а для
% получения откликов инфляции - на 3
plot(periods, Response(:, 5, 2), 'b-', 'LineWidth', 2);
hold on;
plot(periods, Lower(:, 5, 2), 'b--', 'LineWidth', 2);
plot(periods, Upper(:, 5, 2), 'b--', 'LineWidth', 2);
hold off;
title('Отклик темпов прироста индекса пром. производства', 'FontSize', 17, 'FontName', 'Calibri');

grid on;
set(gca, 'XGrid', 'off', 'YGrid', 'on');
set(gca, 'GridAlpha', 0.7);
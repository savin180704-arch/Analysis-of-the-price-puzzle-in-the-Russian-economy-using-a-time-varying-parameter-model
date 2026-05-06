% Чтение данных из Excel
data = readtable("filepath");

% Ось Y (периоды отклика)
Y = data.Periods;

% Матрица значений (Z)
Z = table2array(data(:, 2:end));

% Ось X (время — индексы столбцов)
X = 1:size(Z, 2);

% Создание сетки
[Xg, Yg] = meshgrid(X, Y);

% Построение 3D поверхности с сеткой
figure;
surf(Xg, Yg, Z, 'EdgeColor', [0.3 0.3 0.3]); % сетка на поверхности

% Подписи осей
xlabel('Time');
ylabel('Periods');
zlabel('Inflation Response');

title('Накопленный отклик инфляции');

% Настройка подписей по времени
xticks(1:10:length(X));
xticklabels(data.Properties.VariableNames(2:10:end));
xtickangle(45);

% Сетка координат
grid on;
grid minor;

% Улучшение внешнего вида
colormap jet;
colorbar;

% ВАЖНО: не используем shading interp (иначе пропадёт сетка) faceted
shading faceted;

% Поворот мышкой
rotate3d on;
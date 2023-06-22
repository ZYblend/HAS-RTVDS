
x_actual = out.logsOut.getElement('x_actual').Values.Data;
y_actual = out.logsOut.getElement('y_actual').Values.Data;

x = squeeze(x_actual(1, :, :));
y = squeeze(y_actual(1, :, :));

plot(x,y,'k','LineWidth',1)
xlabel('x','FontWeight','bold')
ylabel('y','FontWeight','bold')
title('Path')
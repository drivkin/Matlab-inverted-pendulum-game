figh=figure(1);
clf(figh);

set(figh,'KeyPressFcn',@(fig_obj, eventDat) move_dot(figh,eventDat))



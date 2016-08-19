function ydot = Rate_d(t, y, ...
                         C, ...
                         ah, acl, ad, ... 
                         net_u_norm, net_conc, u_norm)

ydot    = zeros(length(y),1);
ydot    = - ah*y.*net_u_norm ...    % Hydrodynamic rel. rate
          - acl*y.*net_conc  ...    % Colloidal rel. rate 
          + ad*u_norm.*C;           % Surface dep. rate
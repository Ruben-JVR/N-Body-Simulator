function n_body_problem


  %REMINDER
  % ctrl + R = comment all selected lines
  % ctrl + shift + R = uncomment all selected lines


  %SIMULATION 1
  %===========================================
##  strct1.figNum = 1;
##  strct1.M = [2,3,1];
##  strct1.Q = nan;
##  strct1.B = nan;
##  strct1.Bx = [];
##  strct1.N = size(strct1.M,2);
##  strct1.FConstant = 1;
##  strct1.integrationTime = [0,3];
##  strct1.axs = [-1.5,1.5,-1.5,1.5,-1.5,1.5];
##  strct1.timePlaybackModifier = 5;
##  strct1.timeSkip = 0.005;
##  strct1.selectedBody = 1;
##  strct1.displayPath = true;
##  strct1.figTitle = 'Masses interacting only with gravitation';
##  %INITIAL CONDITION MODIFICATION
##
##  y1 = IConditions({'1 x 1','2 x -1','3 y 1', '3 z 1'}, strct1.N);
##
##  '';
##  initialize_N_Body_Simulation(strct1,y1);
  %=================================================================

  %CIRCLE SIMULATION
  %SIMULATION 2
  %==================================================================
##  strct2.figNum = 2;
##  strct2.M = [1,1,1,1];
##  strct2.Q = nan;
##  strct2.B = nan;
##  strct2.Bx = [];
##  strct2.N = size(strct2.M,2);
##  strct2.FConstant = 1;
##  strct2.integrationTime = [0,8];
##  strct2.axs = [-1.5,1.5,-1.5,1.5,-1.5,1.5];
##  strct2.timePlaybackModifier = 2.5;
##  strct2.timeSkip = 0.005;
##  strct2.selectedBody = 1;
##  strct2.displayPath = true;
##  strct2.figTitle = '4 masses interacting via gravitation';
##  y2 = IConditions({'1 x 1','2 y -1', '3 x -1', '4 y 1', '1 vy -1', '2 vx -1', '3 vy 1', '4 vx 1'}, strct2.N);
##
##  initialize_N_Body_Simulation(strct2,y2);
  %====================================================================


  %SIMULATION 3
  %FIGURE EIGHT
  %==================================================================
##  strct3.figNum = 3;
##  strct3.M = [1,1,1];
##  strct3.Q = nan;
##  strct3.B = nan;
##  strct3.Bx = [];
##  strct3.N = size(strct3.M,2);
##  strct3.FConstant = 1;
##  strct3.integrationTime = [0,5];
##  strct3.axs = [-1.5,1.5,-1.5,1.5,-1.5,1.5];
##  strct3.timePlaybackModifier = 2.5;
##  strct3.timeSkip = 0.01;
##  strct3.selectedBody = 1;
##  strct3.displayPath = true;
##  strct3.figTitle = '3 masses interacting to create a figure eight';
##
##  y3 = IConditions({'1 x 0.9700436','1 y -0.24308753','2 x -0.9700436','2 y 0.24308753','1 vx 0.466203685','1 vy 0.43236573','2 vx 0.466203685','2 vy 0.43236573','3 vx -0.93240737','3 vy -0.86473146'}, strct3.N);
##
##  initialize_N_Body_Simulation(strct3,y3);
  %===============================================


  %SIMULATION 4
  %CHARGED MASSES
  %==============================================
##  strct4.figNum = 4;
##  strct4.M = [1,1];
##  strct4.Q = [1,1];
##  strct4.B = nan;
##  strct4.Bx = [];
##  strct4.N = size(strct4.M,2);
##  strct4.FConstant = 1;
##  strct4.QConstant = 1;
##  strct4.integrationTime = [0,5];
##  strct4.axs = [-1.5,1.5,-1.5,1.5,-1.5,1.5];
##  strct4.timePlaybackModifier = 2.5;
##  strct4.timeSkip = 0.01;
##  strct4.selectedBody = 1;
##  strct4.displayPath = true;
##  strct4.figTitle = '2 Bodies Interacting to Produce 0 Net Acceleration';
##
##  y4 = IConditions({'1 x -1','2 x 1','1 vy 0.5'}, strct4.N);
##
##  initialize_N_Body_Simulation(strct4,y4);
  %=============================================================

  %SIMULATION 5
  %CHARGED Particle in External Magnetic Field
  %============================================================

##  strct5.figNum = 5;
##  strct5.M = [1];
##  strct5.Q = [-1];
##  strct5.B = [0,0,1];
##  strct5.Bx = [];
##  strct5.N = size(strct5.M,2);
##  strct5.FConstant = 1;
##  strct5.QConstant = 1;
##  strct5.integrationTime = [0,7];
##  strct5.axs = 4.*[-1.5,1.5,-1.5,1.5,-1.5,1.5];
##  strct5.timePlaybackModifier = 5;
##  strct5.timeSkip = 0.005;
##  strct5.selectedBody = 1;
##  strct5.displayPath = true;
##  strct5.figTitle = 'Single charge under uniform magnetic field';
##
##  y5 = IConditions({'1 x 0','1 vx 1','1 y -3'}, strct5.N);
##
##  initialize_N_Body_Simulation(strct5,y5);
  %===========================================================


##  %SIMULATION 6
##  %===========================================================
##  strct6.figNum = 6;
##  strct6.M = [3,5,3,2];
##  strct6.Q = [-3,1,-3,4];
##  strct6.B = [0,0,1];
##  strct6.Bx = [];
##  strct6.N = size(strct6.M,2);
##  strct6.FConstant = 1;
##  strct6.QConstant = 1;
##  strct6.integrationTime = [0,4];
##  strct6.axs = 5.*[-1.5,1.5,-1.5,1.5,-1.5,1.5];
##  strct6.timePlaybackModifier = 5;
##  strct6.timeSkip = 0.005;
##  strct6.selectedBody = 1;
##  strct6.displayPath = true;
##  strct6.figTitle = 'charged mass under Functional magnetic field';
##
##  y6 = IConditions({'1 x -4','1 vx 1','1 y -3','3 y 3','4 x 4','2 y -3','3 vy -1','4 vx -2'}, strct6.N);
##
##  initialize_N_Body_Simulation(strct6,y6);
  %=================================================================


  %SIMULATION 7
  %Magnetic Field as a function
  %=================================================================


  strct7.figNum = 6;
  strct7.M = [1];
  strct7.Q = [1];
  strct7.B = nan;
  strct7.Bx = @(X,Y,Z)0;
  strct7.By = @(X,Y,Z)0;
  strct7.Bz = @(X,Y,Z)X;
  strct7.N = size(strct7.M,2);
  strct7.FConstant = 1;
  strct7.QConstant = 1;
  strct7.integrationTime = [0,4];
  strct7.axs = 5.*[-1.5,1.5,-1.5,1.5,-1.5,1.5];
  strct7.timePlaybackModifier = 5;
  strct7.timeSkip = 0.005;
  strct7.selectedBody = 1;
  strct7.displayPath = true;
  strct7.figTitle = 'multiple charged masses under magnetic field described by a function';

  y7 = IConditions({'1 x 1','1 vx -1'}, strct7.N);

  initialize_N_Body_Simulation(strct7,y7);
  %=================================================================
endfunction

function Y = IConditions(y, N)

  Y = zeros(1,N*6);

  for i=1:length(y)

    strs = strsplit(y{i});

    n = str2double(strs{1});
    component = tolower(strs{2});
    value = str2double(strs{3});

    componentNum = 0;
    switch (component)

    case 'vx'
      componentNum = 4;
    case 'vy'
      componentNum = 5;
    case 'vz'
      componentNum = 6;
    case 'x'
      componentNum = 1;
    case 'y'
      componentNum = 2;
    case 'z'
      componentNum = 3;
    endswitch

    if componentNum <= 3
      Y(3*(n-1) + componentNum) = value;
    else
      Y(3*N + 3*(n-1) + componentNum-3) = value;
    endif

  endfor

endfunction


function initialize_N_Body_Simulation(strct,Y)

  N = strct.N;
  integrationTime = strct.integrationTime;
  figNum = strct.figNum;
  axs = strct.axs;

  %opts = optimset('TolX',1e-9,'TolFun',1e-9);
  options = odeset('AbsTol',1e-9,'RelTol',1e-9);
  if isnan(strct.Q)
      %just gravitation
      [tOpt,YOpt] = ode45(@(t,Y)(derivs(t,Y,strct)),integrationTime,Y,options);
    elseif isnan(strct.B) && isempty(strct.Bx)
      %electric and gravitation but no magnetism
      [tOpt,YOpt] = ode45(@(t,Y)(derivs(t,Y,strct) + derivsQ(t,Y,strct)),integrationTime,Y,options);
    elseif isempty(strct.Bx)
      %Magnetism is involved
      [tOpt,YOpt] = ode45(@(t,Y)(derivs(t,Y,strct) + derivsQ(t,Y,strct) + derivsB(t,Y,strct)),integrationTime,Y,options);
    else
      [tOpt,YOpt] = ode45(@(t,Y)(derivs(t,Y,strct) + derivsQ(t,Y,strct) + derivsBFunction(t,Y,strct)),integrationTime,Y,options);
  endif


  '';

  xSol = YOpt(:,1:3:(3*N-2));
  ySol = YOpt(:,2:3:(3*N-1));
  zSol = YOpt(:,3:3:(3*N));

  '';
  figure(figNum); hold on;
  axis(axs);
  xlabel('x');
  ylabel('y');
  zlabel('z');
  title(strct.figTitle);

  if strct.displayPath
    %Plot of gray orbit lines for total trajectory
    plot3(xSol,ySol,zSol,'b','color',[0.5,0.5,0.5]);
  endif


  %Change this to change speed of animation
  %timeModifier = 30;
  %tAnimation = tAnimation .* timeModifier;

  %TIME ANIMATION STUFF
  timePlaybackModifier = strct.timePlaybackModifier;
  timeSkip = strct.timeSkip;

  animationTime = 0;
  animationTimeIndex = 0;
  j=1;

  deltaTime = tOpt(2:end) - tOpt(1:end-1);

  timeElapsed = 0;
  for i = 1:length(deltaTime)

    timeElapsed += deltaTime(i);

    if timeElapsed >= timeSkip
      animationTime(j) = timeElapsed * timePlaybackModifier;
      animationTimeIndex(j) = i;
      timeElapsed = 0;
      j += 1;
    endif
  endfor


  for i=1:length(animationTime)

    for j=1:N
      if j!= strct.selectedBody
        h(j) = plot3(xSol(animationTimeIndex(i),j),ySol(animationTimeIndex(i),j),zSol(animationTimeIndex(i),j),'bo','markerfacecolor','r');
      else
        h(j) = plot3(xSol(animationTimeIndex(i),j),ySol(animationTimeIndex(i),j),zSol(animationTimeIndex(i),j),'bo','markerfacecolor','g');
      endif

    endfor

    %h(1) = plot3(xSol(i,1),ySol(i,1),zSol(i,1),'bo','markerfacecolor','b');
    %h(2) = plot3(xSol(i,2),ySol(i,2),zSol(i,2),'ro','markerfacecolor','r');
    %h(3) = plot3(xSol(i,3),ySol(i,3),zSol(i,3),'go','markerfacecolor','g');

    pause(animationTime(i));

    if i<length(animationTime)
      delete(h);
    endif

  endfor

  '';

endfunction

function dY = derivs(t,Y,q)
  '';
  N = q.N;
  M = q.M;
  FConstant = q.FConstant;

  x = Y(1:3:N*3-2,:);
  y = Y(2:3:(N*3-1),:);
  z = Y(3:3:(N*3),:);

  vx = Y((N*3+1):3:end,:);
  vy = Y((N*3+2):3:end,:);
  vz = Y((N*3+3):3:end,:);

  ax = zeros(1,N);
  ay = zeros(1,N);
  az = zeros(1,N);

  %RADIUS CALCULATIONS
  %r IS STRUCTURED AS THE FOLLOWING FOR 3 bodys as an example:

  %{ radius from body 1 to 2 , radius from body 1 to 3 }
  %{ 0 , radius from 2 to 3 }

  %radius size will be a N-1 by N-1 matrix
  r = zeros(N-1,N-1);
  for i = 1:N
    for j = i+1:N

      r(i,j-1) = sqrt( (x(i) - x(j)).^2 + (y(i)-y(j)).^2 + (z(i) - z(j)).^2);

    endfor
  endfor

  %loop through each body and calculate net acceleration in all three directions for each body
  %can do it more efficiently by doing both ax for i on j and j on i in the same step of the loop
  '';

  for i = 1:(N-1)

    for j = i+1:N
      ax(i) += ((FConstant .* M(j))./((r(i,j-1)).^3)) .* (x(j)-x(i));
      ax(j) += ((FConstant .* M(i))./((r(i,j-1)).^3)) .* (x(i)-x(j));

      ay(i) += ((FConstant .* M(j))./((r(i,j-1)).^3)) .* (y(j)-y(i));
      ay(j) += ((FConstant .* M(i))./((r(i,j-1)).^3)) .* (y(i)-y(j));

      az(i) += ((FConstant .* M(j))./((r(i,j-1)).^3)) .* (z(j)-z(i));
      az(j) += ((FConstant .* M(i))./((r(i,j-1)).^3)) .* (z(i)-z(j));
    endfor

  endfor

  '';
  dY(1:3:(3*N-2)) = vx;
  dY(2:3:(3*N-1)) = vy;
  dY(3:3:(3*N)) = vz;

  dY((3*N+1):3:6*N) = ax;
  dY((3*N+2):3:6*N) = ay;
  dY((3*N+3):3:6*N) = az;
  dY = dY';
  '';

endfunction

%Same as Derivs function but modified for force between charges
function dY = derivsQ(t,Y,q)
  '';
  N = q.N;
  M = q.M;
  Q = q.Q;
  FConstant = q.QConstant;

  x = Y(1:3:N*3-2,:);
  y = Y(2:3:(N*3-1),:);
  z = Y(3:3:(N*3),:);

  vx = Y((N*3+1):3:end,:);
  vy = Y((N*3+2):3:end,:);
  vz = Y((N*3+3):3:end,:);

  ax = zeros(1,N);
  ay = zeros(1,N);
  az = zeros(1,N);

  %RADIUS CALCULATIONS
  %r IS STRUCTURED AS THE FOLLOWING FOR 3 bodys as an example:

  %{ radius from body 1 to 2 , radius from body 1 to 3 }
  %{ 0 , radius from 2 to 3 }

  %radius size will be a N-1 by N-1 matrix
  r = zeros(N-1,N-1);
  for i = 1:N
    for j = i+1:N

      r(i,j-1) = sqrt( (x(i) - x(j)).^2 + (y(i)-y(j)).^2 + (z(i) - z(j)).^2);

    endfor
  endfor

  %loop through each body and calculate net acceleration in all three directions for each body
  %can do it more efficiently by doing both ax for i on j and j on i in the same step of the loop
  '';

  for i = 1:(N-1)

    for j = i+1:N
      ax(i) += -((FConstant .* Q(j) .* Q(i))./((r(i,j-1)).^3)) .* (x(j)-x(i)) ./ M(i);
      ax(j) += -((FConstant .* Q(i) .* Q(j))./((r(i,j-1)).^3)) .* (x(i)-x(j)) ./ M(j);

      ay(i) += -((FConstant .* Q(j) .* Q(i))./((r(i,j-1)).^3)) .* (y(j)-y(i)) ./ M(i);
      ay(j) += -((FConstant .* Q(i) .* Q(j))./((r(i,j-1)).^3)) .* (y(i)-y(j)) ./ M(j);

      az(i) += -((FConstant .* Q(j) .* Q(i))./((r(i,j-1)).^3)) .* (z(j)-z(i)) ./ M(i);
      az(j) += -((FConstant .* Q(i) .* Q(j))./((r(i,j-1)).^3)) .* (z(i)-z(j)) ./ M(j);
    endfor

  endfor

  '';
  dY(1:3:(3*N-2)) = vx;
  dY(2:3:(3*N-1)) = vy;
  dY(3:3:(3*N)) = vz;

  dY((3*N+1):3:6*N) = ax;
  dY((3*N+2):3:6*N) = ay;
  dY((3*N+3):3:6*N) = az;
  dY = dY';
  '';

endfunction

%solving differential equation for magnetic force
function dY = derivsB(t,Y,q)
  '';
  N = q.N;
  M = q.M;
  Q = q.Q;
  B = q.B;

  x = Y(1:3:N*3-2,:);
  y = Y(2:3:(N*3-1),:);
  z = Y(3:3:(N*3),:);

  vx = Y((N*3+1):3:end,:);
  vy = Y((N*3+2):3:end,:);
  vz = Y((N*3+3):3:end,:);

  ax = zeros(1,N);
  ay = zeros(1,N);
  az = zeros(1,N);

  % F = q(v x B)
  % a = q(v x B) / m
  for i = 1:N
    v = [vx(i),vy(i),vz(i)];
    ax(i) = Q(i) .* cross(v,B,2)(1) ./ M(i);
    ay(i) = Q(i) .* cross(v,B,2)(2) ./ M(i);
    az(i) = Q(i) .* cross(v,B,2)(3) ./ M(i);

  endfor

  '';
  dY(1:3:(3*N-2)) = vx;
  dY(2:3:(3*N-1)) = vy;
  dY(3:3:(3*N)) = vz;

  dY((3*N+1):3:6*N) = ax;
  dY((3*N+2):3:6*N) = ay;
  dY((3*N+3):3:6*N) = az;
  dY = dY';
  '';

endfunction

function dY = derivsBFunction(t,Y,q)
  '';
  N = q.N;
  M = q.M;
  Q = q.Q;
  Bx = q.Bx;
  By = q.By;
  Bz = q.Bz;

  x = Y(1:3:N*3-2,:);
  y = Y(2:3:(N*3-1),:);
  z = Y(3:3:(N*3),:);

  vx = Y((N*3+1):3:end,:);
  vy = Y((N*3+2):3:end,:);
  vz = Y((N*3+3):3:end,:);

  ax = zeros(1,N);
  ay = zeros(1,N);
  az = zeros(1,N);

  % F = q(v x B)
  % a = q(v x B) / m
  for i = 1:N
    v = [vx(i),vy(i),vz(i)];
    Bxi = Bx(x(i),y(i),z(i));
    Byi = By(x(i),y(i),z(i));
    Bzi = Bz(x(i),y(i),z(i));
    Bi = [Bxi,Byi,Bzi];
    ax(i) = Q(i) .* cross(v,Bi,2)(1) ./ M(i);
    ay(i) = Q(i) .* cross(v,Bi,2)(2) ./ M(i);
    az(i) = Q(i) .* cross(v,Bi,2)(3) ./ M(i);
  endfor

  '';
  dY(1:3:(3*N-2)) = vx;
  dY(2:3:(3*N-1)) = vy;
  dY(3:3:(3*N)) = vz;

  dY((3*N+1):3:6*N) = ax;
  dY((3*N+2):3:6*N) = ay;
  dY((3*N+3):3:6*N) = az;
  dY = dY';
  '';

endfunction





function initialize_N_Body_Simulation(strct,Y,saveName)

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

  strct.animationTime = animationTime;
  strct.animationTimeIndex = animationTimeIndex;
  strct.xSol = xSol;
  strct.ySol = ySol;
  strct.zSol = zSol;


  %SAVING TO FILE
  if !isempty(saveName)
    save(saveName,'strct');
  endif

  play_simulation(strct);

  '';

endfunction

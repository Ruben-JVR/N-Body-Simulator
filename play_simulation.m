function sim = play_simulation(strct)


  animationTime = strct.animationTime;
  animationTimeIndex = strct.animationTimeIndex;
  xSol = strct.xSol;
  ySol = strct.ySol;
  zSol = strct.ySol;

   '';
  figure(strct.figNum); hold on;
  axis(strct.axs);
  xlabel('x');
  ylabel('y');
  zlabel('z');
  title(strct.figTitle);

  if strct.displayPath
    %Plot of gray orbit lines for total trajectory
    plot3(xSol,ySol,zSol,'b','color',[0.5,0.5,0.5]);
  endif

  for i=1:length(animationTime)

    for j=1:strct.N
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


endfunction

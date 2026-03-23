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

function dY = derivsBFunction(t,Y,q)
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

  dY(1:3:(3*N-2)) = vx;
  dY(2:3:(3*N-1)) = vy;
  dY(3:3:(3*N)) = vz;

  dY((3*N+1):3:6*N) = ax;
  dY((3*N+2):3:6*N) = ay;
  dY((3*N+3):3:6*N) = az;
  dY = dY';
endfunction

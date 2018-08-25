var
        f: text;
        n, x, i, dem, j: longint;
        a: array[1..1000000] of integer;

begin
        assign(f, 'SOLUONG.INP');
        reset(f);
        readln(f, n);
        for i:=1 to n do read(f, a[i]);
        read(f, x);
        close(f);

        dem:=0;
        for i:=1 to n - 1 do
                for j:=i+1 to n do
                begin
                        if a[i] + a[j] = x then dem:=dem+1;
                end;

        assign(f, 'SOLUONG.OUT');
        rewrite(f);
        write(f, dem);
        close(f);
end.
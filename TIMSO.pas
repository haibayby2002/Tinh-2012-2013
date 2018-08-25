var
        f: text;
        a, k, x: longint;

begin
        assign(f, 'TIMSO.INP');
        reset(f);
        read(f, a, x);
        close(f);

        k:=0;
        while x >= a do
        begin
                x:=x div a;
                inc(k);
        end;

        assign(f, 'TIMSO.OUT');
        rewrite(f);
        write(f, k);
        close(f);
end.
type chuoi = string[2];
var
        f: text;
        a: array[1..1000000] of chuoi;
        n, temp, i: longint;

function SoSanhChuoi(a, b: chuoi): boolean; //Tra ve true neu a > b
begin
        if a[1] > b[1] then exit(true)
        else if a[1] < b[1] then exit(false)
        else
        begin
                if length(a) = 2 then
                begin
                        if length(b) = 1 then
                        begin
                                if a[2] > b[1] then exit(true)
                                else exit(false);
                        end
                        else
                        begin
                                if a[2] > b[2] then exit(true)
                                else exit(false);
                        end;
                end
                else
                begin
                        if length(b) = 2 then
                        begin
                                if a[1] > b[2] then exit(true)
                                else exit(false);
                        end
                        else exit(false);
                end;
        end;
end;

procedure sort(l,r: longint);
      var
         i,j: longint;
         x,y: chuoi;
      begin
         i:=l;
         j:=r;
         x:=a[(l+r) div 2];
         repeat
           while SoSanhChuoi(a[i], x) do
            inc(i);
           while SoSanhChuoi(x, a[j]) do
            dec(j);
           if not(i>j) then
             begin
                y:=a[i];
                a[i]:=a[j];
                a[j]:=y;
                inc(i);
                j:=j-1;
             end;
         until i>j;
         if l<j then
           sort(l,j);
         if i<r then
           sort(i,r);
      end;

begin
        assign(f, 'KETNOI.INP');
        reset(f);
        readln(f, n);
        for i:=1 to n do
        begin
                read(f, temp);
                str(temp, a[i]);
        end;
        close(f);

        Sort(1, n);

        assign(f, 'KETNOI.OUT');
        rewrite(f);
        for i:=1 to n do write(f, a[i]);
        close(f);
end.
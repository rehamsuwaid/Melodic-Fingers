%Sound pack downloaded from Freesound
%----------------------------------------
%
%This pack of sounds contains sounds by the following user:
%- TEDAgame ( https://freesound.org/people/TEDAgame/ )
%
%You can find this pack online at: https://freesound.org/people/TEDAgame/packs/25405/
%
%License details
%---------------
%
%Creative Commons 0: http://creativecommons.org/publicdomain/zero/1.0/
function noteGen(n)
if (n==0)
    [y,Fs] = audioread('c-6.ogg');
    sound(y,Fs);
elseif (n==1)
    [y,Fs] = audioread('c-5.ogg');
    sound(y,Fs); 
elseif (n==2)
    [y,Fs] = audioread('b7.ogg');
    sound(y,Fs);
elseif (n==3)
    [y,Fs] = audioread('b6.ogg');
    sound(y,Fs);
elseif (n==4)
    [y,Fs] = audioread('b4.ogg');
    sound(y,Fs);
else
    [y,Fs] = audioread('b4.ogg');
    sound(y,Fs);
end 
        
end


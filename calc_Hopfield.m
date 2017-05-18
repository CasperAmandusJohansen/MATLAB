function [out] = calc_Hopfield(px, W, b)
    a = px;
    converged = false;
    maxLoops = 3;
    loopCount = 0;

    while(~converged && loopCount < maxLoops);
        loopCount = loopCount + 1;

        out = satlins(W*a+b);

        if ( out == a)
            converged = true;
        else
            a = out;
        end
    end
end
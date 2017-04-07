function [z] = riemann_zeta(s,iter)
% ___________________
% 
% RIEMANN_ZETA: Simple implementation of Riemann's Zeta function with using
%               accelerated alternating sum.
%     
%     INPUTS
%         s: Complex number to evaluate the function at.
%         iter: Iterations for the alternating series.
% 
%     OUTPUTS
%         z: Complex number.
%         
%     EXAMPLE:
%         [T, a, P, rho] = atmoscoesa2(height)
%         
%         >> riemann_zeta(1+2i,100000)
% 
%         ans =
% 
%            0.5982 - 0.3519i
% 
%     NOTES:
%         - TEX equation for this implementation: \zeta(s)=\frac{-1}{(1-2^{1-s})}\left(\sum_{k=1}^n \frac{(-1)^{k=1}}{k^s}+\frac{1}{2^n }\sum_{k=n+1}^{2n} \frac{(-1)^{k=1}e_k}{k^s}\right)+\epsilon_n(s)
% ___________________

    sum1 = 0;
    sum2 = 0;
    
    function ek = ek_calc(j,n)
        ek = 0;
        for kk=j:n
            ek = ek + nchoosek(kk,n);
        end
        
    end
    for ii = 1:iter
        sum1 = sum1 + ((-1).^ii)./(ii.^s);
    end
    for jj = (1+iter):(2*iter)
        sum2 = sum2 + ((-1).*ek_calc(jj,iter))./(jj.^s);
    end
    
    z = -(1./(1-2.^(1-s))) .* (sum1 + (1./(2.^iter)).*sum2);
end


% f(x) = a{n}*x^{n} + a{n-1}*x^{n-1} +...+ a{2}*x^{2} + a{1}*x^{1} + a{0}
% a = [a{n} a{n-1} ... a{2} a{1} a{0}] -> Vetor com os coeficientes da
% função.
% r0 -> Valor inicial de r.
% s0 -> Valor inicial de s.
% EE -> Erro estimado (%).

function bairstowv1(a, r0, s0, EE)
    cft = a; % Copiando o vetor dos coeficientes.
    n = length(a); % Tamanho do vetor a (Grau do polinômio: n-1)
    a = a(n : -1 : 1); % Invertendo a ordem dos elementos do vetor a.
    
    % Verificando se o grau do polinômio é par ou ímpar.
    if(mod(n-1, 2) ~= 0)
        m = (n-2)/2 ; % Caso seja ímpar.
    else
        m = (n-3)/2 ; % Caso seja par.
    end
    
    for jj = 1 : m
        r = r0; 
        s = s0;
        Ear = 100;
        Eas = 100;
        
        while (Ear > EE || Eas > EE)
            % Calculando os valores de b e de c.
            b(n) = a(n) ;
            b(n-1) = a(n-1)+ r*b(n);
            c(n) = b(n);
            c(n-1) = b(n-1) + r*c(n);
            for j = n-2 : -1 : 1
                b(j) = a(j) + r*b(j+1) + s*b(j+2);
                c(j) = b(j) + r*c(j+1) + s*c(j+2);
            end
            
            den = (c(2)*c(4) - c(3)^2);
            
            % c(3)*dr + c(4)*ds = -(b(2))
            % c(2)*dr + c(3)*ds = -(b(1))
            % Isolando dr e ds do sistema acima obtemos:
            dr = -(-c(3)*b(2) + b(1)*c(4)) / den;
            ds = (-c(2)*b(2) + c(3)*b(1)) / den;
            
            % Corrigindo as aproximações iniciais com os valores de dr e ds
            % calculados.
            r = r + dr; 
            s = s + ds;
            
            % Calculandos os erros aproximados.
            Ear = abs(dr/r)*100; 
            Eas = abs(ds/s)*100;
        end
        
        x(2*jj - 1) = (r + sqrt(r^2 + 4*s)) / 2;
        x(2*jj) = (r - sqrt(r^2 + 4*s )) / 2;
        
        % Recalculando os valores para a próxima iteração.
        a = b(3 : n);
        n = length(a);
        r0 = r;
        s0 = s;
    end
    
    r = -a(2);
    s = -a(1);
    
    if(n == 2) % Caso falte encontrar somente uma raiz.
        x(2*jj + 1) = (-s)/r;
    elseif(n == 3) % Caso falte encontrar duas raizes.
        x(2*jj + 1) = (r + sqrt(r^2 + 4*s)) / 2;
        x(2*jj + 2) = (r - sqrt(r^2 + 4*s)) / 2;
    else
        disp('error');
    end
    
    saida = (x');
    
    disp('Método de Bairstow:');
    showFunc(cft);
    disp('Raízes:');
    disp(saida);
end

% Mostar a função recebida para o cálculo das raízes.
function showFunc(cft)
    func = 'f(x)=';
    
    for i = 1 : 1 : length(cft) - 2
        func = strcat(func, num2str(cft(i)), 'x^', num2str(length(cft)-i), ' ');
 
        if(cft(i+1) > 0)
            func = strcat(func, '+');
        end
    end

    func = strcat(func, num2str(cft(length(cft) - 1)), 'x');

    if(cft(length(cft)) > 0)
        func = strcat(func, '+');
    end

    func = strcat(func, num2str(cft(length(cft))));
       
    disp(func);
end


function fib()

    n = input('Please enter a non-negative integer or type stop: ','s');
    if strcmp(n,'stop')
        return
    else
        n = str2double(n);
        if isreal(n)
            if n>=0 && round(n)==n
                disp([char(9), 'fib(',num2str(n),') = ',num2str(getFib(n))]);
                %code below is the addition to the script to get the time
                %it takes to execute the command
                disp([char(9), 'average runtime: ', num2str(timeit(@() getFib(n))), ' seconds']);
                fib()
                return
            end
        end
        disp('The input argument is not a non-negative integer!');
        fib()
    end
    
    function fib = getFib(n_int)
        if n_int == 0
            fib = 0;
        elseif n_int == 1
            fib = 1;
        else
            %recursion
            fib = getFib(n_int-1) + getFib(n_int-2);
        end
    end

end
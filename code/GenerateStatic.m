function result = GenerateStatic(N, M, std)
    % Generate random numbers from a normal distribution with mean M and standard deviation std
    randomNumbers = std * randn(N, 1) + M;

    % Adjust the average to M
    adjustment = M - mean(randomNumbers);
    result = randomNumbers + adjustment;
end
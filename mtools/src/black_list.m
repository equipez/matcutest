function list = black_list()
%BLACK_LIST returns a list of problems that are blocked.

list = [];

% The following problems take so much resource that MATLAB get killed.
list = [list, {...
    'BA-L73', ...
    }];

% For the following problem, macup takes an excessively long time.
list = [list, {...
    'BA-L52', ...
    'BA-L52LS', ...
    }];

% For the following problems, mcutest fails because it request more memory than allowed by MATLAB.
list = [list, { ...
    'BA-L16', ...
    'BDRY2', ...
    'CYCLIC3', ...
    'NET4', ...
    'OSCIGRNE', ...
    'PDE1', ...
    'PDE2', ...
    'RDW2D51F', ...
    'RDW2D51U', ...
    'RDW2D52B', ...
    'RDW2D52F', ...
    'RDW2D52U', ...
    'REPEAT', ...
    'TWOD', ...
    'YATP1CNE', ...
    'YATP1NE', ...
    'YATP2CNE', ...
    'YATP2SQ', ...
    }];

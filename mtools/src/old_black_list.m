function list = old_black_list()

list = [];

list = [list, {'REPEAT'}];  % Error using mcutest: Requested 200001x100000 (149.0GB) array exceeds maximum array size preference (31.0GB). This might cause MATLAB to become unresponsive.
list = [list, {'BA-L16'}]; % Error using mcutest: Requested 167436x66462 (82.9GB) array exceeds maximum array size preference (31.0GB). This might cause MATLAB to become unresponsive
list = [list, {'ALLINQP'}]; % The default dimension of this problem is 50000; macup('ALLINQP') takes a long time.
list = [list, {'BA-L73'}]; % macup takes a long time
list = [list, {'BA-L52', 'BA-L52LS'}]; % macup takes a long time
list = [list, {'A0ENDNDL', 'A0ENDNDL', 'A0ENINDL', 'A0ENSNDL', 'A0ESDNDL',  ...
    'A2ENDNDL', 'A2ENINDL', 'A2ENSNDL', 'A2ESDNDL', 'A2ESINDL', 'A2ESSNDL', 'A5ENDNDL', ...
    'A2ENINDL', 'A5ENINDL', 'A5ENSNDL', 'A5ESDNDL', 'A5ESINDL', 'A0ESINDL', 'A0ESSNDL', 'A5ESSNDL', ...
    'EG3', 'CYCLOOCF', 'CYCLOOCT', 'OPTMASS', 'ROSEPETAL2', 'LOBSTERZ', 'LUKVLI1'}];  % Cause GitHub Actions to terminate unexpectedly.
list = [list, {'LUKVLI1', 'NINE5D'}]; % Cause GitHub Actions to terminate unexpectedly.

list = [list, {'HS67'}]; % For unknown reason, this 3D problem takes infinite time during `chcup` on GitHub Actions.
list = [list, {'LHAIFAM'}]; % The starting point has NaN constraint values
list = [list, {'GOFFIN'}]; % This linear-equality constrained problem is strange; when lincoa solves it, x becomes so large (up to 10e16) that the constraint values evaluated by Fortran and matlab are substentially different. Seems to be due to rounding error. Not sure.
list = [list, {'ARGLALE', 'ARGLBLE', 'ARGLCLE', 'MODEL', 'NASH'}]; % Problems are infeasible
list = [list, {'LINCONT'}]; % project cannot find a feasible point, neither does quadprog or fmincon
%list = [list, {'BLOWEYA', 'BLOWEYB', 'DTOC3', 'HUES-MOD', 'HUESTIS', 'POWELL20'}]; % Constraints are feasible, but project cannot find a feasible point
%list = [list, {'DEGENQP', 'DEGENQPC', 'FBRAIN2', 'FBRAIN3', 'SPECANNE'}]; % Too many constraints; test takes too much time
%list = [list, 'TARGUS'];  % Take a long time to solve
list = [list, {'GAUSS1LS', 'GAUSS2LS', 'GAUSS3LS', 'MGH17LS', 'MISRA1ALS', 'MISRA1CLS', 'NELSONLS', 'OSBORNEA','RAT43LS'}]; % Classical uobyqa/cobyla suffers from infinite cycling
list = [list, {'DANWOODLS', 'KOEBHELB'}]; % Classical cobyla suffers from infinite cycling
list=[list, {'QCNEW'}];  % f(x) ~= fx due to bad condition
list=[list, {'BLEACHNG'}];  % MEX function crashes
% Problems with at most 500 variables, but MEX file size > 10 M
list=[list, {'CHANDHEU', 'DEGENQP', 'DMN15102', 'DMN15102LS', 'DMN15103', 'DMN15103LS', 'DMN15332', ...
    'DMN15332LS', 'DMN15333', 'DMN15333LS', 'DMN37142', 'DMN37142LS', 'DMN37143', 'DMN37143LS'}];
% Problems with MEX file size > 10 M
list=[list, {'CLEUVEN3', 'CLEUVEN4', 'CLEUVEN5', 'CLEUVEN6', 'EIGENA', 'EIGENACO', 'EIGENALS', 'EIGENAU', ...
    'EIGENB', 'EIGENBCO', 'EIGENBLS', 'EIGENC', 'EIGENCCO', 'EIGENCLS', 'MODBEALE', 'MODBEALENE', ...
    'LUKVLE2', 'LUKVLI2', 'POWELLBC', '10FOLDTR', 'HARKERP2', 'LIPPERT1', 'LIPPERT2', 'READING8', ...
    'A0NNDNDL', 'A0NNDNIL', 'A0NNDNSL', 'A0NNSNSL', 'A0NSDSDL', 'A0NSDSIL', 'A0NSDSSL', 'A0NSSSSL', ...
    'A2NNDNDL', 'A2NNDNIL', 'A2NNDNSL', 'A2NNSNSL', 'A2NSDSDL', 'A2NSDSIL', 'A2NSDSSL', 'A2NSSSSL', ...
    'A5NNDNDL', 'A5NNDNIL', 'A5NNDNSL', 'A5NNSNSL', 'A5NSDSDL', 'A5NSDSIL', 'A5NSDSSL', 'A5NSSSSL', ...
    'BTS4', 'CONT5-QP', 'DEGDIAG', 'GAUSSELM', 'ALLINQP', 'DMN15103', 'DMN15103LS', 'DMN15333', ...
    'DMN15333LS', 'DMN37143', 'DMN37143LS', 'LEUVEN3', 'LEUVEN4', 'LEUVEN5', 'LEUVEN6', 'DMN15102', ...
    'DMN15102LS', 'DMN15332', 'DMN15332LS', 'DMN37142', 'DMN37142LS', 'FERRISDC', 'FIVE20B', ...
    'QPBAND', 'QPNBAND', 'CHANDHEU', 'FIVE20C', 'BA-L49', 'BA-L49LS', 'DEGENQP', 'NET4', 'DEGTRID', ...
    'DEGTRID2', 'KSS', 'BA-L21', 'BA-L21LS', 'NONMSQRT', 'NONMSQRTNE', 'PORTSQP', 'DEGTRIDL', ...
    'PORTSNQP', 'WALL50', 'BA-L73', 'TWOD', 'CYCLIC3', 'GPP', 'LUBRIF', 'LUBRIFC', 'OSCIGRAD', ...
    'OSCIGRNE', 'INDEFM', 'ROSEPETAL', 'PDE1', 'YATP2CLS', 'YATP2CNE', 'YATP2LS', 'YATP2SQ', ...
    'PDE2', 'YATP1CLS', 'YATP1CNE', 'YATP1LS', 'YATP1NE', 'RDW2D51F', 'RDW2D51U', 'RDW2D52B', ...
    'RDW2D52F', 'RDW2D52U', 'BDRY2', 'WALL100', 'TAX213322', 'TAXR213322', 'CHARDIS0', 'CHARDIS1'}];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% makeDebug()
% Make a debug file with your Q variables in it.
% Use this tool to provide the necessary info
% when you experience a run-time error with a
% grading script.
%
% Syntax: 
%   makeDebug()
%
% Input:
%   None
%   You are prompted for all pertinent information
%
%   SN variable must exist
%   Q1 - Qn variables must exist
%
% Output:
%   MAT file
%
% Written by: Leo Stocco
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [] = makeDebug()
  makeDebugHelper();
end % function

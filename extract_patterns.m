function [stimulus_pattern  ]= extract_patterns(dataset, num_pulse, neural_latency)
% extracts all combinations of stimulus patterns of length = num-pulse
% dataset: data structure from "EPC_TOP80_MU.mat"
% num_pulse: int, defines pattern length, 1 pulse = 18.75 msec
% neural_latency: int, extracting spikes witha latency relative to stimuls
% in miliseconds

% #1 calculate stimulus permutaions
stimulus_perms=compute_stimlus_combinations(num_pulse);

% #2 resample
resample_ufactor=19;
stim_tmp=stimulus_perms(6,:)
stim_tmp_us=imresize(stim_tmp,[1,length(stim_tmp)*resample_ufactor],'box');

% #3 find pattern in stimlus trains
conv(s1,stim_tmp_us)
s1([1:95]+418-95)


% #3 extract patterns 

% #4 extract correponding patterns













end

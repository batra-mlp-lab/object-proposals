function methods = getmethod()


colormap = [ ...
255, 255, 50 ; ...
100, 163, 163 ; ...
218, 71, 71 ; ...
200, 36, 36 ; ...
145, 92, 146 ; ...
183, 36,  73 ; ...
135, 200, 170 ; ...
150, 150, 27 ; ...
140, 190, 200 ; ...
138, 180, 66 ; ...
255, 150, 255 ; ...
92, 172, 158 ; ...
195,189,40;
0, 255, 255;
88, 128, 189;
255, 255, 0;
] ./ 256;

  config = get_config();
  precomputed_prefix = config.precomputed_candidates;
  
  methods = [];
  
  i = numel(methods) + 1;
  methods(i).name = 'Objectness';
  methods(i).short_name = 'O';
  prefix = [precomputed_prefix 'objectness\'];
%   methods(i).candidate_dir = [prefix 'mat_nms_10k'];
%   methods(i).repeatability_candidate_dir = [prefix 'repeatability_mat'];
  methods(i).best_voc07_candidates_file = [prefix 'best_candidates_file.mat'];
   methods(i).best_imagenet_candidates_file = [prefix 'best_candidates_imagenet.mat'];
%   methods(i).repeatability_matching_file = [prefix 'repeatability_matching.mat'];
  methods(i).order = 'descend';
%   methods(i).extract = @run_objectness;
  methods(i).num_candidates = true;
  methods(i).color = colormap(i,:);
  methods(i).is_baseline = false;

  i = numel(methods) + 1;  
  methods(i).name = 'Rahtu';
  methods(i).short_name = 'Rah';
  prefix = [precomputed_prefix 'rahtubest\'];
  methods(i).candidate_dir = [prefix 'mat'];
%   methods(i).repeatability_candidate_dir = [prefix 'repeatability_mat'];
  methods(i).best_voc07_candidates_file = [prefix 'best_candidates_file.mat'];
   methods(i).best_imagenet_candidates_file = [prefix 'best_candidates_imagenet.mat'];
%   methods(i).repeatability_matching_file = [prefix 'repeatability_matching.mat'];
  methods(i).order = 'none';
%   methods(i).extract = @run_rahtubest;
  methods(i).num_candidates = true;
  methods(i).color = colormap(i,:);
  methods(i).is_baseline = false;
  
  i = numel(methods) + 1;
  methods(i).name = 'Sel.Search';
  methods(i).short_name = 'S.S';
  prefix = [precomputed_prefix 'selective_search\'];
%   methods(i).candidate_dir = [prefix 'mat'];
%   methods(i).repeatability_candidate_dir = [prefix 'repeatability_mat'];
  methods(i).best_voc07_candidates_file = [prefix 'best_candidates_file.mat'];
   methods(i).best_imagenet_candidates_file = [prefix 'best_candidates_imagenet.mat'];
%   methods(i).repeatability_matching_file = [prefix 'repeatability_matching.mat'];
  methods(i).order = 'ascend';
%   methods(i).extract = @run_selective_search;
  methods(i).num_candidates = true;
  methods(i).color = colormap(i,:);
  methods(i).is_baseline = false;

  i = numel(methods) + 1;
  methods(i).name = 'Rand.Prim';
  methods(i).short_name = 'R.P';
  prefix = [precomputed_prefix 'randomized_prims\'];
  methods(i).candidate_dir = [prefix 'mat'];
  methods(i).gt_recall_num_candidates = 20000;
%   methods(i).repeatability_candidate_dir = [prefix 'repeatability_mat'];
  methods(i).best_voc07_candidates_file = [prefix 'best_candidates_file.mat'];
   methods(i).best_imagenet_candidates_file = [prefix 'best_candidates_imagenet.mat'];
%   methods(i).repeatability_matching_file = [prefix 'repeatability_matching.mat'];
%   methods(i).rerun_num_candidates =  10 .^ (0:0.25:5);
  methods(i).rerun_num_candidates = [];
%   methods(i).repeatability_num_candidates = 5000;
%   methods(i).gt_recall_num_cand_idxs = [1 4 6 8 10 12 14 17 19];
  methods(i).order = 'none';
%   methods(i).extract = @run_randomized_prims;
  methods(i).num_candidates = true;
  methods(i).color = colormap(i,:);
  methods(i).is_baseline = false;
  

  i = numel(methods) + 1;
  methods(i).name = 'Endres';
  methods(i).short_name = 'En';
  prefix = [precomputed_prefix 'endres\'];
  methods(i).candidate_dir = [prefix 'mat'];
%   methods(i).repeatability_candidate_dir = [prefix 'repeatability_mat'];
  methods(i).best_voc07_candidates_file = [prefix 'best_candidates_file.mat'];
   methods(i).best_imagenet_candidates_file = [prefix 'best_candidates_imagenet.mat'];
%   methods(i).repeatability_matching_file = [prefix 'repeatability_matching.mat'];
  methods(i).order = 'none';
%   methods(i).extract = @run_prop;
  methods(i).num_candidates = false;
  methods(i).color = colormap(i,:);
  methods(i).is_baseline = false;
  
  i = numel(methods) + 1;
  methods(i).name = 'Rantalankila';
  methods(i).short_name = 'R.K';
  prefix = [precomputed_prefix 'Rantalankila\'];
  methods(i).candidate_dir = [prefix 'mat'];
%   methods(i).repeatability_candidate_dir = [prefix 'repeatability_mat'];
  methods(i).best_voc07_candidates_file = [prefix 'best_candidates_file.mat'];
   methods(i).best_imagenet_candidates_file = [prefix 'best_candidates_imagenet.mat'];
%   methods(i).repeatability_matching_file = [prefix 'repeatability_matching.mat'];
  methods(i).order = 'none';
%   methods(i).extract = @run_rantalankila;
  methods(i).num_candidates = true;
  methods(i).rerun_num_candidates = [10 100 1000 10000];
  methods(i).color = colormap(i,:);
  methods(i).is_baseline = false;
  
%   
  i = numel(methods) + 1;
  methods(i).name = 'EdgeBoxes';
  methods(i).short_name = 'EB';
  prefix = [precomputed_prefix 'edgebox\'];
  methods(i).candidate_dir = [prefix 'mat'];
%   methods(i).repeatability_candidate_dir = [prefix 'repeatability_mat'];
  methods(i).best_voc07_candidates_file = [prefix 'best_candidates_file.mat'];
   methods(i).best_imagenet_candidates_file = [prefix 'best_candidates_imagenet.mat'];
%   methods(i).repeatability_matching_file = [prefix 'repeatability_matching.mat'];
  methods(i).order = 'descend';
%   methods(i).extract = @run_edgeboxes;
  methods(i).num_candidates = true;
  methods(i).color = colormap(i,:);
  methods(i).is_baseline = false;
%   
%   
  i = numel(methods) + 1;
  methods(i).name = 'MCG';
  methods(i).short_name = 'M';
  prefix = [precomputed_prefix 'MCG\'];
  methods(i).candidate_dir = [prefix 'mat'];
%   methods(i).repeatability_candidate_dir = [prefix 'repeatability_mat'];
  methods(i).best_voc07_candidates_file = [prefix 'best_candidates_file.mat'];
   methods(i).best_imagenet_candidates_file = [prefix 'best_candidates_imagenet.mat'];
%   methods(i).repeatability_matching_file = [prefix 'repeatability_matching.mat'];
  methods(i).order = 'none';
%   methods(i).extract = @run_MCG;
  methods(i).num_candidates = true;
  methods(i).color = colormap(i,:);
  methods(i).is_baseline = false;
%  
  % add your own method here:
  if false
  i = numel(methods) + 1;
  methods(i).name = 'The full name of your method';
  methods(i).short_name = 'a very short version of the name';
  prefix = [precomputed_prefix 'my-method/'];
  methods(i).candidate_dir = [prefix 'mat'];
%   methods(i).repeatability_candidate_dir = [prefix 'repeatability_mat'];
  methods(i).best_voc07_candidates_file = [prefix 'best_candidates_file.mat'];
%   methods(i).best_imagenet_candidates_file = [prefix 'best_candidates_imagenet.mat'];
%   methods(i).repeatability_matching_file = [prefix 'repeatability_matching.mat'];
 
  % A function pointer to a method that runs your proposal detector.
%   methods(i).extract = @run_edgeboxes;
  
%   methods(i).rerun_num_candidates = []; % ceil(10 .^ (2:0.5:4));
  % Specifies whether or not your method takes the desired number of candidates
  % as an input.

  methods(i).num_candidates = true;
  % colormap for drawing
  methods(i).color = colormap(i,:);
  % This should be false. Is used for drawing baselines dashed.
  methods(i).is_baseline = false;
  end
  
  % do the sorting dance
  sort_keys = [num2cell([methods.is_baseline])', {methods.name}'];
  for i = 1:numel(methods)
    sort_keys{i,1} = sprintf('%d', sort_keys{i,1});
  end
  [~,idx] = sortrows(sort_keys);
  for i = 1:numel(methods)
    methods(idx(i)).sort_key = i;
  end
end

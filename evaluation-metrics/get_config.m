function [config] = get_config()


  % this is where best candidates and all other computed data are stored
  config.precomputed_candidates = 'C:\Users\Prateek\Desktop\best_candid';

  if config.precomputed_candidates(end) ~= '\'
    config.precomputed_candidates = [config.precomputed_candidates '\'];
  end
end

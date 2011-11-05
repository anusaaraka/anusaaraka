  (load "global_path.clp")
  (defglobal ?*path1* = ?*path*)
  (bind ?*path* (str-cat ?*path* "/Anu_clp_files/sd_lwg_rules.clp"))
  (load* ?*path*)
  (load-facts "E_constituents_info_tmp1.dat")
  (load-facts "Node_category.dat")
  (load-facts "preferred_morph_tmp.dat")
  (load-facts "sd_word.dat")
  (run)
  (save-facts "lwg_info_tmp.dat" local root-verbchunk-tam-parser_chunkids verb_type-verb-causative_verb-tam)
  (clear)



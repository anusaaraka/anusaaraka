(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (slot preposition (default 0))(slot Hin_position (default 0)))

 (load "global_path.clp")
 (load-facts "word.dat")
 (load-facts "lwg_info.dat")
 (load-facts "Eng_id_order.dat")
 (load-facts "punctuation_info.dat")
 (load-facts "pada_info.dat")
 (batch* "order_debug.clp")
; (system "clear")
; (run)


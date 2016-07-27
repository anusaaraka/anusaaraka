
;Added by Veena Bagga (16-12-09)
(defrule awkwardly1
(declare (salience 6400))
(id-root ?id awkwardly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id beDage_warIke_se))
(if ?*debug_flag* then 
   (printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  awkwardly.clp    awkwardly1 " ?id " beDage_warIke_se)" crlf))
)
;He parked his car awkwardly on the road .  

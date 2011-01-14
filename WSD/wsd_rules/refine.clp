
(defrule refine0
(declare (salience 5000))
(id-root ?id refine)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id refined )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id nirmala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  refine.clp  	refine0   "  ?id "  nirmala )" crlf))
)

;"refined","Adj","1.nirmala"
;He is a man of refined tastes in dance && music.
;
(defrule refine1
(declare (salience 4900))
(id-root ?id refine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirmala_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  refine.clp 	refine1   "  ?id "  nirmala_kara )" crlf))
)

;"refine","VTI","1.nirmala_karanA"
;The process of refining oil is tedious.
;--"2.suXAranA"   
;We need to refine our old techniques of production. 
;
;
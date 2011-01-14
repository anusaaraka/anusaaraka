
(defrule stilt0
(declare (salience 5000))
(id-root ?id stilt)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id stilted )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ruKAI_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  stilt.clp  	stilt0   "  ?id "  ruKAI_se )" crlf))
)

;"stilted","Adj","1.ruKAI_se"
;She said it in a stilted tone.
;
(defrule stilt1
(declare (salience 4900))
(id-root ?id stilt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id calane_ke_liye_badZe_daMde))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stilt.clp 	stilt1   "  ?id "  calane_ke_liye_badZe_daMde )" crlf))
)

;"stilt","N","1.calane ke liye badZe daMde"
;Stilts are used by men in the circus to entertain people.
;--"2.bAzsa jisa para Gara sWira ho"      
;The boat houses built on stills && situated in the middle of the lake look very beatiful.
;
;
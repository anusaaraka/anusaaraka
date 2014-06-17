;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 03-March-2014
;The monument was moved bodily to a new site.[oald]
;स्मारक पूरी तरह से(पूरा का पूरा) एक नयी साइट पर ले जाया गया था
(defrule bodily2
(declare (salience 3000))
(id-root ?id bodily)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?id1 ?id)
(kriyA-subject  ?id1 ?sub)
(id-word ?sub monument)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrI_waraha_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bodily.clp 	bodily2   "  ?id "  pUrI_waraha_se )" crlf))
)

;****************DEFAULT RULES*********************

(defrule bodily0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id bodily)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SArIrika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bodily.clp 	bodily0   "  ?id "  SArIrika )" crlf))
)

;"bodily","Adj","1.SArIrika"
;The soldiers stood by the post without worrying about any bodily harm.
;
(defrule bodily1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id bodily)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saSarIra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bodily.clp 	bodily1   "  ?id "  saSarIra )" crlf))
)

;"bodily","Adv","1.saSarIra"
;He was bodily removed from the room
;use saSarIra uTA liyA gayA
;--"2.pUrNa_rUpa_se"
;The pillar was moved  bodily to a new site
;KamBe ko pUrNa rUpa se nae sWAna para hatAyA gayA 
;


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)18-Feb-2014
;The government is accused of breaching the terms of the treaty.[oald]
;सरकार पर सन्धि की अवधि तोड़ने  का आरोप लगाया गया है . 
(defrule breach2
(declare (salience 5000))
(id-root ?id breach)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 term)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  breach.clp 	breach2   "  ?id "  wodZa )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)18-Feb-2014
;a breach of contract/copyright/warranty.[oald]
;अनुबंध / कॉपीराइट / वारंटी का उल्लंघन.
(defrule breach3
(declare (salience 5000))
(id-root ?id breach)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-word ?id1 contract|copyright|warranty)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ullaMGana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  breach.clp 	breach3   "  ?id "  ullaMGana )" crlf))
)


;************************DEFAULT RULES**************************
(defrule breach0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id breach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xarAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  breach.clp 	breach0   "  ?id "  xarAra )" crlf))
)

;"breach","N","1.xarAra"
;The bridge developed a breach soonafter construction.
;
(defrule breach1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id breach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xarAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  breach.clp 	breach1   "  ?id "  xarAra_kara )" crlf))
)

;"breach","VT","1.xarAra_karanA"
;Our tanks breached their defence.
;


(defrule relax0
(declare (salience 5000))
(id-root ?id relax)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id relaxed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id wanAva_mukwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  relax.clp  	relax0   "  ?id "  wanAva_mukwa )" crlf))
)

;"relaxed","Adj","1.wanAva_mukwa"
;He looked very relaxed after his weekend trip.
;
(defrule relax1
(declare (salience 4900))
(id-root ?id relax)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id DIlA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  relax.clp 	relax1   "  ?id "  DIlA_kara )" crlf))
)

(defrule relax2
(declare (salience 4800))
(id-root ?id relax)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id DIlA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  relax.clp 	relax2   "  ?id "  DIlA_ho )" crlf))
)

;"relax","VTI","1.DIlA_karanA[honA]"
;Let your muscles relax slowly. 
;--"2.viSrAma_karanA[honA]"
;He likes to relax with a glass of wine when he gets home from work. 
;--"3.wanAva_mukwa_honA[karanA]"
;I felt relaxed,when I came to know she is safe.
;--"4.kama_karanA"
;We would relax the admission fee slightly in your case. 
;

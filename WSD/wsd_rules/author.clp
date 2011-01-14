
(defrule author0
(declare (salience 5000))
(id-root ?id author)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id leKaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  author.clp 	author0   "  ?id "  leKaka )" crlf))
)

;"author","N","1.leKaka"
;Shakespeare is my favorite author.
;Seksapiyara mere priya leKaka hE.
;--"2.pravarwaka"
;Ram is the author of the proposal so he can't comment 
;rAma isa praswAva kA pravarwaka hE awa: vaha tippaNI nahIM kara sakawA .
;
(defrule author1
(declare (salience 4900))
(id-root ?id author)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id racanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  author.clp 	author1   "  ?id "  racanA_kara )" crlf))
)

;"author","V","1.racanA_karanA"

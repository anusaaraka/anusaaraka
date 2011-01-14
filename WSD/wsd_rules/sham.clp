
(defrule sham0
(declare (salience 5000))
(id-root ?id sham)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kapatI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sham.clp 	sham0   "  ?id "  kapatI )" crlf))
)

;"sham","N","1.kapatI"
;She claims to know all about computers but really she's a sham.
;--"2.kapata"
;His love was a sham - he only wanted her money.
;--"3.XoKA"
;They have intellectual pretentions but it is all sham.
;
(defrule sham1
(declare (salience 4900))
(id-root ?id sham)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kA_aBinaya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sham.clp 	sham1   "  ?id "  kA_aBinaya_kara )" crlf))
)

;"sham","V","1.kA_aBinaya_karanA"
;He's only shamming.
;

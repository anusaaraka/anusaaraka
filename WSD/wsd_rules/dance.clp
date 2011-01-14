
(defrule dance0
(declare (salience 5000))
(id-root ?id dance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dance.clp 	dance0   "  ?id "  nAca )" crlf))
)

;"dance","N","1.nAca/nqwya"
;It was evident that the dancer enjoyed the dance as much as the audience.
;
(defrule dance1
(declare (salience 4900))
(id-root ?id dance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nqwya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dance.clp 	dance1   "  ?id "  nqwya_kara )" crlf))
)

;"dance","VI","1.nqwya_karanA/nAcanA"
;Lets dance && sing && make merry.
;


(defrule rush0
(declare (salience 5000))
(id-root ?id rush)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BIdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rush.clp 	rush0   "  ?id "  BIdZa )" crlf))
)

;"rush","N","1.BIdZa"
;We left in the afternoon to avoid the evening rush.
;--"2.hadZabadZI/jalxI_meM"
;She made a rush for the shop.
;Don't work in a rush though there is a pile of files.
;She is in a mad rush so I can't stop her.
;--"3.baDZawI_mAzga"
;The unexpected heavy monsoon caused a rush on raincoats.
;
(defrule rush1
(declare (salience 4900))
(id-root ?id rush)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jalxabAjZI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rush.clp 	rush1   "  ?id "  jalxabAjZI_kara )" crlf))
)

;"rush","VI","1.jalxabAjZI_karanA"
;Don't rush, take your own time to get ready.
;I'm afraid without a single thought she rushed into marriage.
;


(defrule click0
(declare (salience 5000))
(id-root ?id click)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KataKata_kI_AvAjZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  click.clp 	click0   "  ?id "  KataKata_kI_AvAjZa )" crlf))
)

;"click","N","1.KataKata_kI_AvAjZa"
;The door was shut with a click.
;
(defrule click1
(declare (salience 4900))
(id-root ?id click)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id klika_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  click.clp 	click1   "  ?id "  klika_kara )" crlf))
)

(defrule click2
(declare (salience 4800))
(id-root ?id click)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id klika_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  click.clp 	click2   "  ?id "  klika_ho )" crlf))
)

;"click","V","1.klika_kara[ho]"
;--"2.klika_karanA[honA]"
;He clicked the camera just then.
;Click the button on the right.
;The window clicked shut.
;--"3.yakAyaka_samaJa_meM_AnA"
;His mind clicks very fast.
;
